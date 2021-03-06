connection: "looker-you-beautiful"

label: "Jorge probando modelos"
# include all the views
include: "/views/**/*.view"
include: "/*.dashboard"

datagroup: covid19_public_forecast_joespla_thesis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: covid19_public_forecast_joespla_thesis_default_datagroup

#access_grant: testing_regex_stuff {
#  user_attribute: testing_regex
#  allowed_values: ["otro"]
#}

access_grant: can_view_test{
  user_attribute: view_this
  allowed_values: ["yes"]
}

#explore: county_14d {}


explore: county_28d {
  sql_always_where: ${county_28d.prediction_month_name} != 'December' AND ${county_28d.prediction_month_name} != 'February' ;;
  join: japan_prefecture_28d {
    type: cross
    relationship: one_to_one
    sql_on: 1 = 1;;
  }
}

explore: county_14d{
#sql_always_where: ${county_14d.county_population} is NOT null;;
 view_name: county_14d
 join: county_28d{
    type:  left_outer
    relationship: one_to_one
    sql_on: ${county_14d.county_fips_code} = ${county_28d.county_fips_code};;
    sql_where: ${county_14d.state_name} = 'Los Angeles';;
 }
}

#explore: county_28d_historical {}

#explore: county_14d_historical {}

#explore: japan_prefecture_28d_historical {}

explore: japan_prefecture_28d {
  query: test{
    label: "Esto es una prueba"
    dimensions: [cumulative_confirmed]
  }
}

#explore: county_14d_historical_ {}

#explore: japan_prefecture_28d_historical_ {}

#explore: state_14d_historical {}

#explore: state_14d_historical_ {}

explore: state_14d_change {
  extends: [state_28d]
  hidden: no
}

#explore: state_28d_historical {}

#explore: state_28d_historical_ {}

explore: state_28d {
  hidden: yes
}
