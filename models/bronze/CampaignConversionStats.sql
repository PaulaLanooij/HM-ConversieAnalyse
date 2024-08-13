{{ config(materialized='table') }}

with source as (
      select * from {{ source('google_ads', 'ads_CampaignConversionStats_7745214896') }}
),
renamed as (
    select
        {{ adapter.quote("campaign_id") }},
        {{ adapter.quote("customer_id") }},
        {{ adapter.quote("campaign_base_campaign") }},
        {{ adapter.quote("metrics_conversions") }},
        {{ adapter.quote("metrics_conversions_value") }},
        {{ adapter.quote("metrics_value_per_conversion") }},
        {{ adapter.quote("segments_ad_network_type") }},
        {{ adapter.quote("segments_conversion_action") }},
        {{ adapter.quote("segments_conversion_action_category") }},
        {{ adapter.quote("segments_conversion_action_name") }},
        {{ adapter.quote("segments_conversion_attribution_event_type") }},
        {{ adapter.quote("segments_date") }},
        {{ adapter.quote("segments_day_of_week") }},
        {{ adapter.quote("segments_month") }},
        {{ adapter.quote("segments_quarter") }},
        {{ adapter.quote("segments_slot") }},
        {{ adapter.quote("segments_week") }},
        {{ adapter.quote("segments_year") }},
        {{ adapter.quote("_LATEST_DATE") }},
        {{ adapter.quote("_DATA_DATE") }}

    from source
)
select * from renamed
  