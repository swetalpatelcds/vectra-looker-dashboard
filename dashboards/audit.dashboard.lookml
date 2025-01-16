---
- dashboard: audit
  title: Audit
  layout: newspaper
  description: ''
  preferred_slug: mSgrFG6ytUjY62L2xami3N
  elements:
  - title: Audit Table
    name: Audit Table
    model: chronicle-poc-test
    explore: events
    type: looker_grid
    fields: [events.event_time_time, events.principal_username_standardized, events__principal__user__attribute__roles.name,
      status, events__security_result.description, list_of_metadata_product_log_id_2]
    filters:
      events.principal_username_standardized: "-NULL"
    sorts: [events.event_time_time desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: list
      based_on: events.metadata__product_log_id
      expression: ''
      label: List of Metadata Product Log ID
      measure: list_of_metadata_product_log_id
      type: list
    - category: dimension
      expression: |+
        case(when( ${events__security_result.action_details} = "", "-"),  ${events__security_result.action_details})


      label: Status
      value_format:
      value_format_name:
      dimension: status
      _kind_hint: dimension
      _type_hint: string
    - _kind_hint: measure
      _type_hint: list
      based_on: events.metadata__product_log_id
      expression: ''
      label: List of Metadata Product Log ID
      measure: list_of_metadata_product_log_id_2
      type: list
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      events.principal_username_standardized: Username
      events__security_result.description: Message
      events__principal__user__attribute__roles.name: Role
    hidden_fields: []
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Username: events__principal__user__email_addresses.events__principal__user__email_addresses
      Status: events__security_result.action_details
      Time: events.event_time_time
    row: 3
    col: 0
    width: 24
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Detection fields are not working
      as expected"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 15
    height: 3
  filters:
  - name: Time
    title: Time
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: chronicle-poc-test
    explore: events
    listens_to_filters: []
    field: events.event_time_time
  - name: Username
    title: Username
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: chronicle-poc-test
    explore: events
    listens_to_filters: [Time]
    field: events.principal_username_standardized
  - name: Status
    title: Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: chronicle-poc-test
    explore: events
    listens_to_filters: [Time]
    field: events__security_result.action_details
