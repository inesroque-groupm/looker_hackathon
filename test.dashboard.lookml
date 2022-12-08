- dashboard: new_dashboard
  title: New Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Y7dbuRKjPt1UkKhQpMYUoK
  elements:
  - title: Number of Movies over time
    name: Number of Movies over time
    model: looker_data_test_lir
    explore: movies
    type: looker_line
    fields: [count_of_tconst, title_basics.start_year_year]
    fill_fields: [title_basics.start_year_year]
    sorts: [count_of_tconst desc 0]
    limit: 500
    dynamic_fields: [{measure: count_of_tconst, based_on: title_basics.tconst, expression: '',
        label: Count of Tconst, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    x_axis_label: Year of Release
    x_axis_zoom: true
    y_axis_zoom: false
    label_value_format: ''
    series_types: {}
    series_labels:
      count_of_tconst: Number of Movies
    series_point_styles:
      count_of_tconst: auto
    trend_lines: []
    swap_axes: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
    hidden_fields: []
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
