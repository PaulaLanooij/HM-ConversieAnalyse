{{ config(materialized='table') }}

with source as (
      select * from {{ source('google_ads', 'ads_CampaignBasicStats_7745214896') }}
),
renamed as (
    select
        {{ adapter.quote("campaign_id") }},
        {{ adapter.quote("customer_id") }},
        {{ adapter.quote("campaign_base_campaign") }},
        {{ adapter.quote("metrics_clicks") }},
        {{ adapter.quote("metrics_conversions") }},
        {{ adapter.quote("metrics_conversions_value") }},
        {{ adapter.quote("metrics_cost_micros") }},
        {{ adapter.quote("metrics_impressions") }},
        {{ adapter.quote("metrics_interaction_event_types") }},
        {{ adapter.quote("metrics_interactions") }},
        {{ adapter.quote("metrics_view_through_conversions") }},
        {{ adapter.quote("segments_ad_network_type") }},
        {{ adapter.quote("segments_date") }},
        {{ adapter.quote("segments_device") }},
        {{ adapter.quote("segments_slot") }},
        {{ adapter.quote("_LATEST_DATE") }},
        {{ adapter.quote("_DATA_DATE") }}

    from source
)
select * from renamed
  