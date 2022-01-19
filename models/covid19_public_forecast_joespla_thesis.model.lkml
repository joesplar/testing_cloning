connection: "bq-api"

label: "Jorge probando modelos"
# include all the views
include: "/views/**/*.view"

datagroup: covid19_public_forecast_joespla_thesis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: covid19_public_forecast_joespla_thesis_default_datagroup

#explore: county_14d {}


explore: county_28d {
  join: japan_prefecture_28d {
    type: cross
    relationship: one_to_one
    sql_on: 1 = 1;;
  }
}

explore: county_14d{
 join: county_28d{
    type:  left_outer
    relationship: one_to_one
    sql_on: ${county_14d.county_fips_code} = ${county_28d.county_fips_code};;
 }
}

#explore: county_28d_historical {}

#explore: county_14d_historical {}

#explore: japan_prefecture_28d_historical {}

explore: japan_prefecture_28d {}

#explore: county_14d_historical_ {}

#explore: japan_prefecture_28d_historical_ {}

#explore: state_14d_historical {}

#explore: state_14d_historical_ {}

explore: state_14d_change {}

#explore: state_28d_historical {}

#explore: state_28d_historical_ {}

explore: state_28d {}
