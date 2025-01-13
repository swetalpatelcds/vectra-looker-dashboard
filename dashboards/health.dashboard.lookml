---
- dashboard: health
  title: Health
  layout: newspaper
  description: ''
  preferred_slug: F1hDdwecaihIPNsLqnfcYC
  elements:
  - title: System Table
    name: System Table
    model: chronicle-poc-test
    explore: events
    type: looker_grid
    fields: [events__security_result__detection_fields__system_version_last_update_utc.system_version_last_update_utc,
      events__security_result__detection_fields__cpu_user_percent.cpu_user_percent,
      events__security_result__detection_fields__cpu_system_percent.cpu_system_percent,
      events__security_result__detection_fields__cpu_idle_percent.cpu_idle_percent,
      events__security_result__detection_fields__disk_disk_utilization_usage_percent.disk_disk_utilization_usage_percent,
      events__security_result__detection_fields__memory_usage_percent.memory_usage_percent,
      events__security_result__detection_fields__network_traffic_brain_aggregated_peak_traffic_mbps.network_traffic_brain_aggregated_peak_traffic_mbps,
      events__security_result__detection_fields__power_status.power_status, events__security_result__detection_fields__power_error.power_error]
    filters:
      events__security_result__detection_fields__system_version_last_update_utc.system_version_last_update_utc: "-NULL"
    sorts: [events__security_result__detection_fields__system_version_last_update_utc.system_version_last_update_utc
        desc]
    limit: 1
    column_limit: 50
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
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 4
  - title: Sensor Table
    name: Sensor Table
    model: chronicle-poc-test
    explore: events
    type: looker_grid
    fields: [events.observer__hostname, events__observer__ip.events__observer__ip,
      events__security_result__detection_fields__network_aggregated_peak_traffic_mbps.network_aggregated_peak_traffic_mbps,
      events__security_result__detection_fields__connectivity_sensors_status.connectivity_sensors_status,
      events__security_result__detection_fields__trafficdrop_sensors_status.trafficdrop_sensors_status]
    sorts: [events.observer__hostname]
    limit: 500
    column_limit: 50
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
    row: 4
    col: 0
    width: 24
    height: 6
