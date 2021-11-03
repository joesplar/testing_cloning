connection: "bq-api"

# include all the views
include: "/views/**/*.view"

datagroup: covid19_public_forecast_joespla_thesis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: covid19_public_forecast_joespla_thesis_default_datagroup

#explore: county_14d {}

explore: county_28d_historical_ {
  join: japan_prefecture_28d_historical_ {
    type: full_outer
    relationship: many_to_many
    sql_on:  ${county_28d_historical_.forecast_date} =  ${japan_prefecture_28d_historical_.forecast_date};;
  }
}

explore: county_28d {
  join: japan_prefecture_28d {
    type: full_outer
    relationship: many_to_many
    sql_on: ${county_28d.forecast_date} = ${japan_prefecture_28d.forecast_date} ;;
  }
}

#explore: county_28d_historical {}

#explore: county_14d_historical {}

#explore: japan_prefecture_28d_historical {}

#explore: japan_prefecture_28d {}

#explore: county_14d_historical_ {}

#explore: japan_prefecture_28d_historical_ {}

#explore: state_14d_historical {}

#explore: state_14d_historical_ {}

#explore: state_14d {}

#explore: state_28d_historical {}

#explore: state_28d_historical_ {}

#explore: state_28d {}
