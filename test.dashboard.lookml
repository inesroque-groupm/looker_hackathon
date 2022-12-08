- dashboard: imdb__movies__tv_series_analysis
  title: IMDb - Movies & TV Series Analysis
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
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
    listen:
      What type of content do you want to see?: title_basics.title_type
    row: 9
    col: 0
    width: 12
    height: 6
  - title: Average Rating over time
    name: Average Rating over time
    model: looker_data_test_lir
    explore: movies
    type: looker_line
    fields: [title_ratings.average_average_rating, title_basics.start_year_year]
    fill_fields: [title_basics.start_year_year]
    sorts: [title_basics.start_year_year desc]
    limit: 500
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
    show_null_points: false
    interpolation: linear
    y_axes: [{label: Average Rating, orientation: left, series: [{axisId: title_ratings.average_average_rating,
            id: title_ratings.average_average_rating, name: Average Average Rating}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Year of Release
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    listen:
      What type of content do you want to see?: title_basics.title_type
    row: 9
    col: 13
    width: 11
    height: 6
  - title: Genres over time
    name: Genres over time
    model: looker_data_test_lir
    explore: movies
    type: looker_line
    fields: [title_basics.start_year_year, genre.genre, title_basics.count]
    pivots: [genre.genre]
    fill_fields: [title_basics.start_year_year]
    filters:
      genre.genre: "-NULL"
    sorts: [genre.genre, title_basics.start_year_year, title_basics.count desc 0]
    limit: 500
    query_timezone: Europe/London
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
    show_null_points: false
    interpolation: linear
    y_axes: [{label: Number of movies, orientation: left, series: [{axisId: title_basics.count,
            id: Action - title_basics.count, name: Action}, {axisId: title_basics.count,
            id: Adult - title_basics.count, name: Adult}, {axisId: title_basics.count,
            id: Adventure - title_basics.count, name: Adventure}, {axisId: title_basics.count,
            id: Animation - title_basics.count, name: Animation}, {axisId: title_basics.count,
            id: Biography - title_basics.count, name: Biography}, {axisId: title_basics.count,
            id: Comedy - title_basics.count, name: Comedy}, {axisId: title_basics.count,
            id: Crime - title_basics.count, name: Crime}, {axisId: title_basics.count,
            id: Documentary - title_basics.count, name: Documentary}, {axisId: title_basics.count,
            id: Drama - title_basics.count, name: Drama}, {axisId: title_basics.count,
            id: Family - title_basics.count, name: Family}, {axisId: title_basics.count,
            id: Fantasy - title_basics.count, name: Fantasy}, {axisId: title_basics.count,
            id: Film-Noir - title_basics.count, name: Film-Noir}, {axisId: title_basics.count,
            id: Game-Show - title_basics.count, name: Game-Show}, {axisId: title_basics.count,
            id: History - title_basics.count, name: History}, {axisId: title_basics.count,
            id: Horror - title_basics.count, name: Horror}, {axisId: title_basics.count,
            id: Music - title_basics.count, name: Music}, {axisId: title_basics.count,
            id: Musical - title_basics.count, name: Musical}, {axisId: title_basics.count,
            id: Mystery - title_basics.count, name: Mystery}, {axisId: title_basics.count,
            id: News - title_basics.count, name: News}, {axisId: title_basics.count,
            id: Reality-TV - title_basics.count, name: Reality-TV}, {axisId: title_basics.count,
            id: Romance - title_basics.count, name: Romance}, {axisId: title_basics.count,
            id: Sci-Fi - title_basics.count, name: Sci-Fi}, {axisId: title_basics.count,
            id: Short - title_basics.count, name: Short}, {axisId: title_basics.count,
            id: Sport - title_basics.count, name: Sport}, {axisId: title_basics.count,
            id: Talk-Show - title_basics.count, name: Talk-Show}, {axisId: title_basics.count,
            id: Thriller - title_basics.count, name: Thriller}, {axisId: title_basics.count,
            id: War - title_basics.count, name: War}, {axisId: title_basics.count,
            id: Western - title_basics.count, name: Western}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Year of Release
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      What type of content do you want to see?: title_basics.title_type
    row: 23
    col: 0
    width: 24
    height: 7
  - title: Top Rated Genres
    name: Top Rated Genres
    model: looker_data_test_lir
    explore: movies
    type: looker_grid
    fields: [genre.genre, title_ratings.average_average_rating]
    sorts: [title_ratings.average_average_rating desc]
    limit: 500
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels: {}
    series_cell_visualizations:
      title_ratings.average_average_rating:
        is_active: true
        palette:
          palette_id: afd46b40-e939-4ace-bffd-69d1bb16ee05
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_value_format:
      title_ratings.average_average_rating: 0.#
    speed: 15
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
    hidden_fields: []
    hidden_points_if_no: []
    hidden_pivots: {}
    listen: {}
    row: 30
    col: 0
    width: 24
    height: 4
  - title: Most Frequent Genres of All Time
    name: Most Frequent Genres of All Time
    model: looker_data_test_lir
    explore: movies
    type: looker_wordcloud
    fields: [genre.genre, title_ratings.count]
    sorts: [title_ratings.count desc 0]
    limit: 500
    query_timezone: Europe/London
    color_application: undefined
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    hidden_pivots: {}
    listen: {}
    row: 18
    col: 10
    width: 14
    height: 5
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <h2 style = "width: 100%;

        border-radius: 500px;
        background-color: #0057AF;
        color: #ffffff;
        text-align: center;
        align-items: center;
        font-size: 25px;
        font-weight: 600;">Analysis Over Time</h2>
    row: 7
    col: 0
    width: 24
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <h2 style = "width: 100%;

        border-radius: 500px;
        background-color: #0057AF;
        color: #ffffff;
        text-align: center;
        align-items: center;
        font-size: 25px;
        font-weight: 600;">Genres</h2>
    row: 15
    col: 0
    width: 24
    height: 3
  - title: Releases
    name: Releases
    model: looker_data_test_lir
    explore: movies
    type: single_value
    fields: [title_basics.count, count_last_year]
    filters:
      count_last_year: ''
    limit: 500
    dynamic_fields: [{category: measure, expression: '', label: Count_last_year, based_on: title_basics.tconst,
        _kind_hint: measure, measure: count_last_year, type: count_distinct, _type_hint: number,
        filters: {title_basics.start_year_year: '2022'}}]
    query_timezone: Europe/London
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#3EB0D5"
    comparison_label: in 2022
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    series_types: {}
    hidden_pivots: {}
    listen: {}
    row: 3
    col: 10
    width: 6
    height: 4
  - title: Avg Releases per Year
    name: Avg Releases per Year
    model: looker_data_test_lir
    explore: movies
    type: single_value
    fields: [title_basics.count, years, releases, releases2022]
    filters:
      count_last_year: ''
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${releases}/${years}",
        label: avg_releases_per_year, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_releases_per_year, _type_hint: number},
      {category: measure, expression: '', label: Count_last_year, based_on: title_basics.tconst,
        _kind_hint: measure, measure: count_last_year, type: count_distinct, _type_hint: number,
        filters: {title_basics.start_year_year: '2022'}}, {category: measure, expression: !!null '',
        label: "#releases", value_format: !!null '', value_format_name: !!null '',
        based_on: title_basics.tconst, _kind_hint: measure, measure: releases, type: count_distinct,
        _type_hint: number}, {category: measure, expression: !!null '', label: "#years",
        value_format: !!null '', value_format_name: !!null '', based_on: title_basics.start_year_year,
        _kind_hint: measure, measure: years, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: "#releases2022", value_format: !!null '',
        value_format_name: !!null '', based_on: title_basics.tconst, _kind_hint: measure,
        measure: releases2022, type: count_distinct, _type_hint: number, filters: {
          title_basics.start_year_year: '2022'}}, {category: table_calculation, expression: "${releases2022}/1",
        label: numberReleases2022, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: numberreleases2022, _type_hint: number}]
    query_timezone: Europe/London
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#FFD95F"
    value_format: '0'
    comparison_label: in 2022
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    series_types: {}
    hidden_pivots: {}
    hidden_fields: [title_basics.count, years, releases, releases2022]
    listen: {}
    row: 3
    col: 18
    width: 6
    height: 4
  - title: Top 10 Frequent Genres in 2022
    name: Top 10 Frequent Genres in 2022
    model: looker_data_test_lir
    explore: movies
    type: looker_pie
    fields: [genre.genre, title_basics.count]
    filters:
      title_basics.start_year_year: '2022'
      genre.genre: "-NULL"
    sorts: [title_basics.count desc 0]
    limit: 10
    query_timezone: Europe/London
    value_labels: legend
    label_type: labPer
    inner_radius:
    start_angle:
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688
      options:
        steps: 5
        reverse: true
    series_colors: {}
    series_labels: {}
    hidden_pivots: {}
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
    listen: {}
    row: 18
    col: 0
    width: 10
    height: 5
  - title: ''
    name: " (3)"
    model: looker_data_test_lir
    explore: movies
    type: looker_pie
    fields: [title_basics.title_type, title_basics.count]
    filters:
      title_basics.title_type: "-tvEpisode"
    sorts: [title_basics.count desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: "# Total Releases",
        value_format: !!null '', value_format_name: !!null '', based_on: title_basics.tconst,
        _kind_hint: measure, measure: total_releases, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: "# Years", value_format: !!null '',
        value_format_name: !!null '', based_on: title_basics.start_year_year, _kind_hint: measure,
        measure: years, type: count_distinct, _type_hint: number}, {category: table_calculation,
        expression: "${total_releases}/${years}", label: "# Avg. Release / Year",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: avg_release_year, _type_hint: number, is_disabled: true},
      {measure: count_of_genre, based_on: genre.genre, expression: '', label: Count
          of Genre, type: count_distinct, _kind_hint: measure, _type_hint: number},
      {measure: count_of_tconst, based_on: title_basics.tconst, expression: '', label: Count
          of Tconst, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    query_timezone: Europe/London
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
    series_colors:
      movie: "#75E2E2"
      tvSeries: "#FFD95F"
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
    hidden_pivots: {}
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
    listen: {}
    row: 3
    col: 0
    width: 8
    height: 4
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <h2 style = "color: #092656;
        font-size:40px;
        font-weight: 600;">Movies & TV Series Analysis</h2>
    row: 0
    col: 6
    width: 13
    height: 3
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |2-
        <div class="logo">
              <img  src="https://upload.wikimedia.org/wikipedia/commons/6/69/IMDB_Logo_2016.svg">
            </div>
    row: 0
    col: 2
    width: 4
    height: 3
  filters:
  - name: What type of content do you want to see?
    title: What type of content do you want to see?
    type: field_filter
    default_value: movie,tvSeries
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: inline
    model: looker_data_test_lir
    explore: movies
    listens_to_filters: []
    field: title_basics.title_type
