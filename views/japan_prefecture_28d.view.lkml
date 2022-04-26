view: japan_prefecture_28d {
  #sql_table_name: `bigquery-public-data.covid19_public_forecasts.japan_prefecture_28d`;;
  derived_table: {
    sql:  SELECT
          row_number() OVER(ORDER BY prefecture_code) AS prim_key,*
          FROM `bigquery-public-data.covid19_public_forecasts.japan_prefecture_28d`
          ;;
  }

  dimension: prim_key {
    type: number
    primary_key: yes
    sql: ${TABLE}.prim_key ;;
  }

  dimension: cumulative_confirmed {
    type: number
    description: "Predicted number of cumulative confirmed cases on the prediction_date. This is cumulative over time"
    sql: ${TABLE}.cumulative_confirmed ;;
  }

  dimension: cumulative_confirmed_ground_truth {
    type: number
    description: "Actual number of cumulative confirmed cases according to the ground truth data. This is cumulative over time"
    sql: ${TABLE}.cumulative_confirmed_ground_truth ;;
  }

  dimension: cumulative_confirmed_q0025 {
    type: number
    description: "The lower bound of the 95% confidence interval of the predicted number of cumulative confirmed cases on the prediction_date (2.5% quantile). This is cumulative over time"
    sql: ${TABLE}.cumulative_confirmed_q0025 ;;
  }

  dimension: cumulative_confirmed_q0975 {
    type: number
    description: "The upper bound of the 95% confidence interval of cumulative confirmed cases on the prediction_date (97.5% quantile). This is cumulative over time"
    sql: ${TABLE}.cumulative_confirmed_q0975 ;;
  }

  dimension: cumulative_deaths {
    type: number
    description: "Predicted number of cumulative confirmed cases on the prediction_date. This is cumulative over time"
    sql: ${TABLE}.cumulative_deaths ;;
  }

  dimension: cumulative_deaths_ground_truth {
    type: number
    description: "Actual number of cumulative deaths according to the ground truth data. This is cumulative over time"
    sql: ${TABLE}.cumulative_deaths_ground_truth ;;
  }

  dimension: cumulative_deaths_q0025 {
    type: number
    description: "The lower bound of the 95% confidence interval of the predicted number of cumulative deaths on the prediction_date (2.5% quantile). This is cumulative over time"
    sql: ${TABLE}.cumulative_deaths_q0025 ;;
  }

  dimension: cumulative_deaths_q0975 {
    type: number
    description: "The upper bound of the 95% confidence interval of the predicted number of cumulative deaths on the prediction_date (97.5% quantile). This is cumulative over time"
    sql: ${TABLE}.cumulative_deaths_q0975 ;;
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

  dimension: hospitalized_patients_q0025 {
    type: number
    description: "The lower bound of the 95% confidence interval of the predicted number of people hospitalized on the prediction_date (2.5% quantile). This is cumulative over time"
    sql: ${TABLE}.hospitalized_patients_q0025 ;;
  }

  dimension: hospitalized_patients_q0975 {
    type: number
    description: "The upper bound of the 95% confidence interval of the predicted number of people hospitalized on the prediction_date (97.5% quantile). This is cumulative over time"
    sql: ${TABLE}.hospitalized_patients_q0975 ;;
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
    description: "Predicted number of new deaths on the prediction_date. This is not cumulative over time"
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
      year,
      month_name,
      month_num
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.prediction_date ;;
  }

  dimension: prefecture_code {
    type: string
    required_access_grants: [edgardo_y_su_kinder]
    description: "Unique identifer of the prefecture."
    sql: ${TABLE}.prefecture_code ;;
  }

  dimension: prefecture_name {
    type: string
    description: "Full text name of the prefecture"
    sql: ${TABLE}.prefecture_name ;;
  }

  dimension: prefecture_name_kanji {
    type: string
    description: "Full text name of the prefecture in Kanji"
    sql: ${TABLE}.prefecture_name_kanji ;;
  }

  dimension: prefecture_population {
    type: number
    description: "Total population of the prefecture"
    sql: ${TABLE}.prefecture_population ;;
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

  dimension: recovered_q0025 {
    type: number
    description: "The lower bound of the 95% confidence interval of the predicted number of people documented as recovered on the prediction_date (2.5% quantile). This is not cumulative over time"
    sql: ${TABLE}.recovered_q0025 ;;
  }

  dimension: recovered_q0975 {
    type: number
    description: "The upper bound of the 95% confidence interval of the predicted number of people documented as recovered on the prediction_date (97.5% quantile). This is not cumulative over time"
    sql: ${TABLE}.recovered_q0975 ;;
  }

  dimension: test_max_dimension {
    type:  string
    sql:  concat(MAX(${prediction_year},'Q', MAX(${prediction_quarter}))) ;;
  }

  measure: count {
    type: count
    drill_fields: [prefecture_name]
  }

  measure: sum_pouplation_prefecture {
    type:  sum_distinct
    value_format: "#,##0"
    sql: ${prefecture_population} ;;
  }

  measure: sum_new_confirmed_JAP{
    type: sum_distinct
    value_format: "#,##0"
    sql: ${new_confirmed} ;;
  }

  measure: sum_new_deaths_JAP{
    type: sum_distinct
    value_format: "#,##0"
    sql: ${new_deaths} ;;
  }
}
