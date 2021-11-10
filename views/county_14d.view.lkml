view: county_14d {
  sql_table_name: `bigquery-public-data.covid19_public_forecasts.county_14d`
    ;;

  dimension: county_fips_code {
    type: string
    primary_key: yes
    description: "5-digit unique identifer of the county."
    sql: ${TABLE}.county_fips_code ;;
  }

  dimension: county_name {
    type: string
    description: "Full text name of the county"
    sql: ${TABLE}.county_name ;;
  }

  dimension: county_population {
    type: number
    description: "Total population of the county"
    sql: ${TABLE}.county_population ;;
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
    drill_fields: [county_name, state_name]
  }

  measure: sum_comulative_death_14d {
    type: sum
    sql: ${cumulative_deaths} ;;
  }

  measure: total_population {
    type: sum_distinct
    sql: ${county_population} ;;
  }

}
