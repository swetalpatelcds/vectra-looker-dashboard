---
- dashboard: vectra
  title: vectra
  layout: newspaper
  crossfilter_enabled: true
  description: ''
  preferred_slug: r75srxKV7Ay8koXVK1VRFp
  elements:
  - title: Event log types
    name: Event log types
    model: chronicle-poc-test
    explore: events
    type: looker_pie
    fields: [events.metadata__log_type, count_of_metadata_id]
    filters: {}
    sorts: [events.metadata__log_type]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: events.metadata__id
      expression: ''
      label: Count of Metadata ID
      measure: count_of_metadata_id
      type: count_distinct
    value_labels: legend
    label_type: labPer
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
    listen:
      Metadata Event Timestamp Seconds: events.metadata__event_timestamp__seconds
    row: 1
    col: 0
    width: 8
    height: 6
  - type: button
    name: button_2809
    rich_content_json: '{"text":"New Button","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED"}'
    row: 0
    col: 0
    width: 24
    height: 1
  filters:
  - name: Metadata Event Timestamp Seconds
    title: Metadata Event Timestamp Seconds
    type: field_filter
    default_value: "[0,100]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options: []
    model: chronicle-poc-test
    explore: events
    listens_to_filters: []
    field: events.metadata__event_timestamp__seconds
