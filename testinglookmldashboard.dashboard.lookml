- dashboard: thesis_covid19_good
  title: Thesis_Covid19_Good
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: 14d vs 28d USA Cumulative Deaths
    name: 14d vs 28d USA Cumulative Deaths
    model: covid19_public_forecast_joespla_thesis
    explore: county_14d
    type: looker_column
    fields: [county_14d.county_name, county_14d.sum_comulative_death_14d, county_28d.sum_comulative_death_28d]
    filters:
      county_14d.sum_comulative_death_14d: ">1000000"
    sorts: [county_14d.county_name]
    limit: 500
    query_timezone: Europe/Dublin
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 10
    col: 8
    width: 8
    height: 6
  - title: 14 d Max New Confirmed vs Hospitalized
    name: 14 d Max New Confirmed vs Hospitalized
    model: covid19_public_forecast_joespla_thesis
    explore: county_14d
    type: looker_column
    fields: [county_14d.county_name, max_of_new_confirmed, max_of_hospitalized_patients]
    sorts: [max_of_new_confirmed desc]
    limit: 5
    dynamic_fields: [{measure: max_of_cumulative_deaths, based_on: county_14d.cumulative_deaths,
        expression: '', label: Max of Cumulative Deaths, type: max, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_cumulative_deaths, based_on: county_14d.cumulative_deaths,
        expression: '', label: Sum of Cumulative Deaths, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: max_of_new_confirmed, based_on: county_14d.new_confirmed,
        expression: '', label: Max of New Confirmed, type: max, _kind_hint: measure,
        _type_hint: number}, {measure: max_of_hospitalized_patients, based_on: county_14d.hospitalized_patients,
        expression: '', label: Max of Hospitalized Patients, type: max, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Europe/Dublin
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 10
    col: 16
    width: 8
    height: 6
  - title: 28 d Max New Confirmed vs Hospitalized
    name: 28 d Max New Confirmed vs Hospitalized
    model: covid19_public_forecast_joespla_thesis
    explore: county_14d
    type: looker_column
    fields: [county_28d.county_name, max_of_new_confirmed_2, max_of_hospitalized_patients_2]
    sorts: [max_of_new_confirmed_2 desc]
    limit: 5
    dynamic_fields: [{measure: max_of_cumulative_deaths, based_on: county_14d.cumulative_deaths,
        expression: '', label: Max of Cumulative Deaths, type: max, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_cumulative_deaths, based_on: county_14d.cumulative_deaths,
        expression: '', label: Sum of Cumulative Deaths, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: max_of_new_confirmed, based_on: county_14d.new_confirmed,
        expression: '', label: Max of New Confirmed, type: max, _kind_hint: measure,
        _type_hint: number}, {measure: max_of_hospitalized_patients, based_on: county_14d.hospitalized_patients,
        expression: '', label: Max of Hospitalized Patients, type: max, _kind_hint: measure,
        _type_hint: number}, {measure: max_of_new_confirmed_2, based_on: county_28d.new_confirmed,
        expression: '', label: Max of New Confirmed, type: max, _kind_hint: measure,
        _type_hint: number}, {measure: max_of_hospitalized_patients_2, based_on: county_28d.hospitalized_patients,
        expression: '', label: Max of Hospitalized Patients, type: max, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Europe/Dublin
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 10
    col: 0
    width: 8
    height: 6
  - title: Top 5 14d  Cumulative Deaths
    name: Top 5 14d  Cumulative Deaths
    model: covid19_public_forecast_joespla_thesis
    explore: county_14d
    type: looker_grid
    fields: [max_of_cumulative_deaths, county_14d.county_name, county_14d.state_name]
    sorts: [max_of_cumulative_deaths desc]
    limit: 5
    dynamic_fields: [{category: measure, expression: '', label: Max of Cumulative
          Deaths, value_format: !!null '', value_format_name: decimal_0, based_on: county_14d.cumulative_deaths,
        _kind_hint: measure, measure: max_of_cumulative_deaths, type: max, _type_hint: number},
      {measure: sum_of_cumulative_deaths, based_on: county_14d.cumulative_deaths,
        expression: '', label: Sum of Cumulative Deaths, type: sum, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Europe/Dublin
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 6
    col: 0
    width: 6
    height: 4
  - title: Top 5 State Cumulative Deaths 14d
    name: Top 5 State Cumulative Deaths 14d
    model: covid19_public_forecast_joespla_thesis
    explore: county_14d
    type: looker_grid
    fields: [max_of_cumulative_deaths, county_14d.state_name]
    sorts: [max_of_cumulative_deaths desc]
    limit: 5
    dynamic_fields: [{category: measure, expression: '', label: Max of Cumulative
          Deaths, value_format: !!null '', value_format_name: decimal_0, based_on: county_14d.cumulative_deaths,
        _kind_hint: measure, measure: max_of_cumulative_deaths, type: max, _type_hint: number},
      {measure: sum_of_cumulative_deaths, based_on: county_14d.cumulative_deaths,
        expression: '', label: Sum of Cumulative Deaths, type: sum, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Europe/Dublin
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 6
    col: 6
    width: 6
    height: 4
  - title: Top 5 28d Cumulative Death
    name: Top 5 28d Cumulative Death
    model: covid19_public_forecast_joespla_thesis
    explore: county_14d
    type: looker_grid
    fields: [county_28d.county_name, max_of_cumulative_deaths_1, county_28d.state_name]
    sorts: [max_of_cumulative_deaths_1 desc]
    limit: 5
    dynamic_fields: [{measure: max_of_cumulative_deaths, based_on: county_14d.cumulative_deaths,
        expression: '', label: Max of Cumulative Deaths, type: max, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_cumulative_deaths, based_on: county_14d.cumulative_deaths,
        expression: '', label: Sum of Cumulative Deaths, type: sum, _kind_hint: measure,
        _type_hint: number}, {category: measure, expression: '', label: Max of Cumulative
          Deaths, value_format: !!null '', value_format_name: decimal_0, based_on: county_28d.cumulative_deaths,
        _kind_hint: measure, measure: max_of_cumulative_deaths_1, type: max, _type_hint: number}]
    query_timezone: Europe/Dublin
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 6
    col: 12
    width: 6
    height: 4
  - title: Top 5 State Cumulative Death
    name: Top 5 State Cumulative Death
    model: covid19_public_forecast_joespla_thesis
    explore: county_14d
    type: looker_grid
    fields: [max_of_cumulative_deaths_1, county_28d.state_name]
    sorts: [max_of_cumulative_deaths_1 desc]
    limit: 5
    dynamic_fields: [{measure: max_of_cumulative_deaths, based_on: county_14d.cumulative_deaths,
        expression: '', label: Max of Cumulative Deaths, type: max, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_cumulative_deaths, based_on: county_14d.cumulative_deaths,
        expression: '', label: Sum of Cumulative Deaths, type: sum, _kind_hint: measure,
        _type_hint: number}, {category: measure, expression: '', label: Max of Cumulative
          Deaths, value_format: !!null '', value_format_name: id, based_on: county_28d.cumulative_deaths,
        _kind_hint: measure, measure: max_of_cumulative_deaths_1, type: max, _type_hint: number}]
    query_timezone: Europe/Dublin
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 6
    col: 18
    width: 6
    height: 4
  - title: USA vs Japan New and Deaths
    name: USA vs Japan New and Deaths
    model: covid19_public_forecast_joespla_thesis
    explore: county_28d
    type: looker_bar
    fields: [japan_prefecture_28d.prediction_month_name, sum_of_new_confirmed_usa,
      sum_of_new_deaths_usa, sum_of_new_confirmed_japan, sum_of_new_deaths_japan]
    filters:
      japan_prefecture_28d.prediction_month_name: November, December
    sorts: [japan_prefecture_28d.prediction_month_name]
    limit: 500
    dynamic_fields: [{category: measure, expression: '', label: Sum of Cumulative
          Deaths Japan, based_on: japan_prefecture_28d.cumulative_deaths, _kind_hint: measure,
        measure: sum_of_cumulative_deaths_japan, type: sum, _type_hint: number}, {
        category: measure, expression: '', label: Sum of Cumulative Deaths USA, based_on: county_28d.cumulative_deaths,
        _kind_hint: measure, measure: sum_of_cumulative_deaths_usa_1, type: sum, _type_hint: number},
      {category: measure, expression: '', label: Sum of New Deaths USA, value_format: !!null '',
        value_format_name: decimal_0, based_on: county_28d.new_deaths, _kind_hint: measure,
        measure: sum_of_new_deaths_usa, type: sum, _type_hint: number}, {category: measure,
        expression: '', label: Sum of New Deaths Japan, value_format: !!null '', value_format_name: decimal_0,
        based_on: japan_prefecture_28d.new_deaths, _kind_hint: measure, measure: sum_of_new_deaths_japan,
        type: sum, _type_hint: number}, {measure: sum_of_new_confirmed, based_on: japan_prefecture_28d.new_confirmed,
        expression: '', label: Sum of New Confirmed, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_new_confirmed_2, based_on: county_28d.new_confirmed,
        expression: '', label: Sum of New Confirmed, type: sum, _kind_hint: measure,
        _type_hint: number}, {category: measure, expression: '', label: Sum of New
          Confirmed USA, value_format: !!null '', value_format_name: decimal_0, based_on: county_28d.new_confirmed,
        _kind_hint: measure, measure: sum_of_new_confirmed_usa, type: sum, _type_hint: number},
      {category: measure, expression: '', label: Sum of New Confirmed Japan, value_format: !!null '',
        value_format_name: decimal_0, based_on: japan_prefecture_28d.new_confirmed,
        _kind_hint: measure, measure: sum_of_new_confirmed_japan, type: sum, _type_hint: number}]
    query_timezone: Europe/Dublin
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: New Deaths, orientation: bottom, series: [{axisId: sum_of_new_confirmed_usa,
            id: sum_of_new_confirmed_usa, name: Sum of New Confirmed USA}, {axisId: sum_of_new_deaths_usa,
            id: sum_of_new_deaths_usa, name: Sum of New Deaths USA}, {axisId: sum_of_new_confirmed_japan,
            id: sum_of_new_confirmed_japan, name: Sum of New Confirmed Japan}, {axisId: sum_of_new_deaths_japan,
            id: sum_of_new_deaths_japan, name: Sum of New Deaths Japan}], showLabels: true,
        showValues: true, maxValue: 1000000000, minValue: !!null '', unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 5, type: linear}]
    font_size: 11px
    series_types: {}
    series_colors:
      sum_of_new_deaths_usa: "#4276BE"
      sum_of_new_confirmed_usa: "#75E2E2"
      sum_of_new_deaths_japan: "#72D16D"
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Total Population USA
    name: Total Population USA
    model: covid19_public_forecast_joespla_thesis
    explore: county_14d
    type: single_value
    fields: [county_14d.total_population]
    limit: 500
    dynamic_fields: [{measure: sum_of_county_population, based_on: county_14d.county_population,
        expression: '', label: Sum of County Population, type: sum, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Europe/Dublin
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Total Japan Population
    name: Total Japan Population
    model: covid19_public_forecast_joespla_thesis
    explore: japan_prefecture_28d
    type: single_value
    fields: [japan_prefecture_28d.sum_pouplation_prefecture]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: 'sum(${japan_prefecture_28d.prefecture_population})',
        label: Total_Calculation, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: dimension, table_calculation: total_calculation, _type_hint: number,
        is_disabled: true}]
    query_timezone: Europe/Dublin
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    y_axes: []
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
