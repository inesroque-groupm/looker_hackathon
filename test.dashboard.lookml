- dashboard: test
  title: Test
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
    - name: add_a_unique_name_1670415478
      title: Untitled Visualization
      model: looker_data_test_lir
      explore: inventory_items
      type: looker_grid
      fields: [inventory_items.station_id, inventory_items.name, inventory_items.capacity]
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
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
