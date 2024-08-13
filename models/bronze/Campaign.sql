{{ config(materialized='table') }}

with source as (
      select * from {{ source('google_ads', 'ads_Campaign_7745214896') }}
),
renamed as (
    select
        {{ adapter.quote("campaign_id") }},
        {{ adapter.quote("customer_id") }},
        {{ adapter.quote("bidding_strategy_name") }},
        {{ adapter.quote("campaign_advertising_channel_sub_type") }},
        {{ adapter.quote("campaign_advertising_channel_type") }},
        {{ adapter.quote("campaign_bidding_strategy") }},
        {{ adapter.quote("campaign_bidding_strategy_type") }},
        {{ adapter.quote("campaign_budget_amount_micros") }},
        {{ adapter.quote("campaign_budget_explicitly_shared") }},
        {{ adapter.quote("campaign_budget_has_recommended_budget") }},
        {{ adapter.quote("campaign_budget_period") }},
        {{ adapter.quote("campaign_budget_recommended_budget_amount_micros") }},
        {{ adapter.quote("campaign_budget_total_amount_micros") }},
        {{ adapter.quote("campaign_campaign_budget") }},
        {{ adapter.quote("campaign_end_date") }},
        {{ adapter.quote("campaign_experiment_type") }},
        {{ adapter.quote("campaign_manual_cpc_enhanced_cpc_enabled") }},
        {{ adapter.quote("campaign_maximize_conversion_value_target_roas") }},
        {{ adapter.quote("campaign_name") }},
        {{ adapter.quote("campaign_percent_cpc_enhanced_cpc_enabled") }},
        {{ adapter.quote("campaign_serving_status") }},
        {{ adapter.quote("campaign_start_date") }},
        {{ adapter.quote("campaign_status") }},
        {{ adapter.quote("campaign_tracking_url_template") }},
        {{ adapter.quote("campaign_url_custom_parameters") }},
        {{ adapter.quote("_LATEST_DATE") }},
        {{ adapter.quote("_DATA_DATE") }}

    from source
)
select * from renamed
  