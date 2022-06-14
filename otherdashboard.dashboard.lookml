- dashboard: otherdashboard
  title: test
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
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
    series_text_format:
    view_name.field_name:
        fg_color: '#eff4f6'
        bg_color: '#1b2327'
        bold: true | false
        italic: true | false
        align: left | center | right
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
