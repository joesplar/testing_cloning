connection: "bq-api"

# include all the views
include: "/views/**/*.view"

datagroup: covid19_public_forecast_joespla_thesis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: covid19_public_forecast_joespla_thesis_default_datagroup

explore: county_14d {}

explore: county_28d_historical_ {}

explore: county_28d {
  join: japan_prefecture_28d {
    type: left_outer
    relationship: one_to_one
    sql_on: ${county_28d.forecast_date} = ${japan_prefecture_28d.forecast_date} ;;
  }
}

explore: county_28d_historical {}

explore: county_14d_historical {}

explore: japan_prefecture_28d_historical {}

explore: japan_prefecture_28d {}

explore: county_14d_historical_ {}

explore: japan_prefecture_28d_historical_ {}

explore: state_14d_historical {}

explore: state_14d_historical_ {}

explore: state_14d {}

explore: state_28d_historical {}

explore: state_28d_historical_ {}

explore: state_28d {}
