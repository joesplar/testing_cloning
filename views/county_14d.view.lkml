view: county_14d {
  derived_table: {
    sql:  SELECT
    row_number() OVER(ORDER BY county_fips_code) AS prim_key,*
    FROM `bigquery-public-data.covid19_public_forecasts.county_14d`
    ;;
  }

  required_access_grants: [can_view_test]

  dimension: prim_key {
    type: number
    primary_key: yes
    sql: ${TABLE}.prim_key ;;
  }

  dimension: county_fips_code {
    type: string
    description: "5-digit unique identifer of the county."
    sql: ${TABLE}.county_fips_code ;;
  }

  dimension: county_name {
    type: string
    description: "Full text name of the county"
    case_sensitive: no
    sql: ${TABLE}.county_name ;;
    link: {
      label: "Explore County 28 days"
      #url: "google.com"
      #url: "/explore/covid19_public_forecast_joespla_thesis/county_28d?fields=county_28d.county_name,county_28d.new_confirmed&f[county_28d.county_name]={{value}}&f[county_28d.new_confirmed]=NOT+NULL&sorts=county_28d.county_name&limit=500"
      url: "https://gcpl226.cloud.looker.com/explore/covid19_public_forecast_joespla_thesis/county_28d?fields=county_28d.county_name,county_28d.new_confirmed&f[county_28d.county_name]={{value}}&f[county_28d.new_confirmed]=NOT+NULL&sorts=county_28d.county_name&limit=500"
    }
  }

  dimension: county_population {
    type: number
    description: "Total population of the county"
    #sql:  COALESCE(${TABLE}.county_population,0) ;;
    sql:  ${TABLE}.county_population ;;
  }

  dimension: cumulative_confirmed {
    type: number
    description: "Predicted number of cumulative deaths on the prediction_date. This is cumulative over time"
    sql: ${TABLE}.cumulative_confirmed ;;
  }

  dimension: cumulative_confirmed_ground_truth {
    type: number
    description: "Actual number of cumulative confirmed cases according to the ground truth data. This is cumulative over time"
    sql: ${TABLE}.cumulative_confirmed_ground_truth ;;
  }

  dimension: cumulative_deaths {
    type: number
    description: "Predicted number of cumulative confirmed cases on the prediction_date. This is not cumulative over time"
    sql: ${TABLE}.cumulative_deaths ;;
  }

  dimension: cumulative_deaths_ground_truth {
    type: number
    description: "Actual number of cumulative deaths according to the ground truth data. This is cumulative over time"
    sql: ${TABLE}.cumulative_deaths_ground_truth ;;
  }

  dimension_group: forecast {
    type: time
    description: "Date of the forecast"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.forecast_date ;;
  }

  dimension: hospitalized_patients {
    type: number
    description: "Predicted number of people hospitalized on the prediction_date. This is not cumulative over time"
    sql: ${TABLE}.hospitalized_patients ;;
  }

  dimension: hospitalized_patients_ground_truth {
    type: number
    description: "Actual number of people hospitalized according to the ground truth data. This is not cumulative over time"
    sql: ${TABLE}.hospitalized_patients_ground_truth ;;
  }

  dimension: new_confirmed {
    type: number
    description: "Predicted number of new confirmed cases on the prediction_date. This is not cumulative over time"
    sql: ${TABLE}.new_confirmed ;;
  }

  dimension: new_confirmed_7day_rolling {
    type: number
    description: "The seven day rolling average of new confirmed cases."
    sql: ${TABLE}.new_confirmed_7day_rolling ;;
  }

  dimension: new_confirmed_ground_truth {
    type: number
    description: "Actual number of new confirmed cases according to the ground truth data. This is not cumulative over time"
    sql: ${TABLE}.new_confirmed_ground_truth ;;
  }

  dimension: new_deaths {
    type: number
    description: "Predicted number of new deaths on the prediction_date. This is cumulative over time"
    sql: ${TABLE}.new_deaths ;;
  }

  dimension: new_deaths_7day_rolling {
    type: number
    description: "The seven day rolling average of new confirmed cases."
    sql: ${TABLE}.new_deaths_7day_rolling ;;
  }

  dimension: new_deaths_ground_truth {
    type: number
    description: "Actual number of new deaths according to the ground truth data. This is not cumulative over time"
    sql: ${TABLE}.new_deaths_ground_truth ;;
  }

  dimension_group: prediction {
    type: time
    description: "Predicted date of the given metrics"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.prediction_date ;;
  }

  dimension_group: test_raw_group_intervals {
    type: duration
    intervals: [day, week, month, quarter, year]
    sql_start:  ${prediction_date} ;;
    sql_end: ${test_raw_data} ;;
  }

  dimension: period_test_raw {
    type: string
    sql: ${county_name} ;;
    order_by_field: test_raw_data
  }

  dimension: test_raw_data {
    type: date_raw
    sql: DATE_SUB(${prediction_raw}, INTERVAL 0 DAY);;
  }

  dimension: recovered {
    type: number
    description: "Predicted number of people documented as recovered on the prediction_date. This is not cumulative over time"
    sql: ${TABLE}.recovered ;;
  }

  dimension: recovered_documented_ground_truth {
    type: number
    description: "Actual number of people hospitalized according to the ground truth data"
    sql: ${TABLE}.recovered_documented_ground_truth ;;
  }

  dimension: state_name {
    type: string
    description: "Full text name of the state in which a given county lies"
    sql: ${TABLE}.state_name ;;
  }

  measure: count {
    type: count
    drill_fields: [county_details*]
  }

  measure: sum_comulative_death_14d {
    type: sum
    sql: ${cumulative_deaths} ;;
  }

  measure: total_population {
    type: sum_distinct
    sql: ${county_population} ;;
  }

  set: county_details {
    fields: [county_name, state_name, county_population]
  }

}
