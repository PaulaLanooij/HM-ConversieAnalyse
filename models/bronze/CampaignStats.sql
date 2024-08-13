{{ config(materialized='table') }}

with source as (
      select * from {{ source('google_ads', 'ads_CampaignStats_7745214896') }}
),
renamed as (
    select
        {{ adapter.quote("campaign_id") }},
        {{ adapter.quote("customer_id") }},
        {{ adapter.quote("campaign_base_campaign") }},
        {{ adapter.quote("metrics_active_view_cpm") }},
        {{ adapter.quote("metrics_active_view_ctr") }},
        {{ adapter.quote("metrics_active_view_impressions") }},
        {{ adapter.quote("metrics_active_view_measurability") }},
        {{ adapter.quote("metrics_active_view_measurable_cost_micros") }},
        {{ adapter.quote("metrics_active_view_measurable_impressions") }},
        {{ adapter.quote("metrics_active_view_viewability") }},
        {{ adapter.quote("metrics_average_cost") }},
        {{ adapter.quote("metrics_average_cpc") }},
        {{ adapter.quote("metrics_average_cpm") }},
        {{ adapter.quote("metrics_clicks") }},
        {{ adapter.quote("metrics_conversions") }},
        {{ adapter.quote("metrics_conversions_from_interactions_rate") }},
        {{ adapter.quote("metrics_conversions_value") }},
        {{ adapter.quote("metrics_cost_micros") }},
        {{ adapter.quote("metrics_cost_per_conversion") }},
        {{ adapter.quote("metrics_cost_per_current_model_attributed_conversion") }},
        {{ adapter.quote("metrics_ctr") }},
        {{ adapter.quote("metrics_current_model_attributed_conversions") }},
        {{ adapter.quote("metrics_current_model_attributed_conversions_value") }},
        {{ adapter.quote("metrics_gmail_forwards") }},
        {{ adapter.quote("metrics_gmail_saves") }},
        {{ adapter.quote("metrics_gmail_secondary_clicks") }},
        {{ adapter.quote("metrics_impressions") }},
        {{ adapter.quote("metrics_interaction_event_types") }},
        {{ adapter.quote("metrics_interaction_rate") }},
        {{ adapter.quote("metrics_interactions") }},
        {{ adapter.quote("metrics_value_per_conversion") }},
        {{ adapter.quote("metrics_value_per_current_model_attributed_conversion") }},
        {{ adapter.quote("segments_ad_network_type") }},
        {{ adapter.quote("segments_click_type") }},
        {{ adapter.quote("segments_date") }},
        {{ adapter.quote("segments_day_of_week") }},
        {{ adapter.quote("segments_device") }},
        {{ adapter.quote("segments_month") }},
        {{ adapter.quote("segments_quarter") }},
        {{ adapter.quote("segments_week") }},
        {{ adapter.quote("segments_year") }},
        {{ adapter.quote("_LATEST_DATE") }},
        {{ adapter.quote("_DATA_DATE") }}

    from source
)
select * from renamed
  