-- Project: Analyzing User Sessions and E-Commerce Events
-- Data source: `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
-- Goal: Extract session and event details for further funnel analysis.

-- CTE for identifying unique user sessions
-- Selects user_pseudo_id and ga_session_id for each session start.
WITH session_CTE AS (
  SELECT
    user_pseudo_id,
    -- Retrieving session_id from event_params
    (SELECT ep.value.int_value FROM UNNEST(event_params) AS ep WHERE ep.key = 'ga_session_id') AS session_id,
    -- Create a unique identifier for each user session
    CONCAT(
      user_pseudo_id,
      CAST((SELECT ep.value.int_value FROM UNNEST(event_params) AS ep WHERE ep.key = 'ga_session_id') AS STRING)
    ) AS user_session_id
  FROM
    `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
  WHERE
    event_name = 'session_start'
),

-- CTE for retrieving event details within specific event types
-- Includes timestamps, device information, traffic source, and landing_page.
events_CTE AS (
  SELECT
    -- Convert event_date and event_timestamp to TIMESTAMP format
    TIMESTAMP(DATETIME(PARSE_DATE('%Y%m%d', event_date), TIME(TIMESTAMP_MICROS(event_timestamp)))) AS event_timestamp,
    user_pseudo_id,
    -- Retrieving session_id from event_params
    (SELECT ep.value.int_value FROM UNNEST(event_params) AS ep WHERE ep.key = 'ga_session_id') AS session_id,
    -- Create a unique identifier for each user session
    CONCAT(
      user_pseudo_id,
      CAST((SELECT ep.value.int_value FROM UNNEST(event_params) AS ep WHERE ep.key = 'ga_session_id') AS STRING)
    ) AS user_session_id,
    event_name,
    geo.country AS country,
    device.category AS device_category,
    device.language AS device_language,
    device.operating_system AS device_operating_system,
    traffic_source.source AS source,
    traffic_source.medium AS medium,
    traffic_source.name AS campaign,
    -- Extracting the landing page path from page_location
    REGEXP_EXTRACT(
      (SELECT ep.value.string_value FROM UNNEST(event_params) AS ep WHERE ep.key = 'page_location'),
      r'(?:https:\/\/)?[^\/]+\/(.*)'
    ) AS landing_page_location
  FROM
    `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
  WHERE
    event_name IN (
      'session_start',
      'view_item',
      'add_to_cart',
      'begin_checkout',
      'add_shipping_info',
      'add_payment_info',
      'purchase'
    )
)

-- Final Query: Merging Event Data with Session Data
-- This ensures that we only receive events that are associated with registered sessions.
SELECT
  e.* -- Выбираем все столбцы из таблицы событий
FROM
  events_CTE AS e
INNER JOIN
  session_CTE AS s
ON
  e.user_session_id = s.user_session_id;
