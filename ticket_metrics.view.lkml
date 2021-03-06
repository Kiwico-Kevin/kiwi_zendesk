view: ticket_metrics {
  sql_table_name: zendesk.ticket_metrics ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  measure: agent_wait_time_in_minutes_business {
    type: average
    sql: ${TABLE}.agent_wait_time_in_minutes_business ;;
    value_format: "0"
  }

  measure: agent_wait_time_in_minutes_calendar {
    type: average
    sql: ${TABLE}.agent_wait_time_in_minutes_calendar ;;
    value_format: "0"
  }

  dimension_group: assigned {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      week_of_year,
      month_name,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.assigned_at ;;
  }

  dimension: assignee_stations {
    type: number
    sql: ${TABLE}.assignee_stations ;;
  }

  dimension_group: assignee_updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      week_of_year,
      month_name,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.assignee_updated_at ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      week_of_year,
      month_name,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  measure: first_resolution_time_in_minutes_business {
    type: average
    sql: ${TABLE}.first_resolution_time_in_minutes_business ;;
    value_format: "0"
  }

  measure: first_resolution_time_in_minutes_calendar {
    type: average
    sql: ${TABLE}.first_resolution_time_in_minutes_calendar ;;
    value_format: "0"
  }

  measure: full_resolution_time_in_minutes_business {
    type: average
    sql: ${TABLE}.full_resolution_time_in_minutes_business ;;
    value_format: "0"
  }

  measure: full_resolution_time_in_minutes_calendar {
    type: average
    sql: ${TABLE}.full_resolution_time_in_minutes_calendar ;;
    value_format: "0"
  }

  dimension: group_stations {
    type: number
    sql: ${TABLE}.group_stations ;;
  }

  dimension_group: initially_assigned {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      week_of_year,
      month_name,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.initially_assigned_at ;;
  }

  dimension_group: latest_comment_added {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      week_of_year,
      month_name,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.latest_comment_added_at ;;
  }

  dimension_group: loaded {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      week_of_year,
      month_name,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.loaded_at ;;
  }

  measure: on_hold_time_in_minutes_business {
    type: average
    sql: ${TABLE}.on_hold_time_in_minutes_business ;;
    value_format: "0"
  }

  measure: on_hold_time_in_minutes_calendar {
    type: average
    sql: ${TABLE}.on_hold_time_in_minutes_calendar ;;
    value_format: "0"
  }

  dimension_group: received {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      week_of_year,
      month_name,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.received_at ;;
  }

  dimension: reopens {
    type: number
    sql: ${TABLE}.reopens ;;
  }

  dimension: replies {
    type: number
    sql: ${TABLE}.replies ;;
  }

  measure: reply_time_in_minutes_business {
    type: average
    sql: ${TABLE}.reply_time_in_minutes_business ;;
    value_format: "0"
  }

  measure: reply_time_in_minutes_calendar {
    type: average
    sql: ${TABLE}.reply_time_in_minutes_calendar ;;
    value_format: "0"
  }

  dimension_group: requester_updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      week_of_year,
      month_name,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.requester_updated_at ;;
  }

  measure: requester_wait_time_in_minutes_business {
    type: average
    sql: ${TABLE}.requester_wait_time_in_minutes_business ;;
    value_format: "0"
  }

  measure: requester_wait_time_in_minutes_calendar {
    type: average
    sql: ${TABLE}.requester_wait_time_in_minutes_calendar ;;
    value_format: "0"
  }

  dimension_group: solved {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      week_of_year,
      month_name,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.solved_at ;;
  }

  dimension_group: status_updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      week_of_year,
      month_name,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.status_updated_at ;;
  }

  dimension: ticket_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ticket_id ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      week_of_year,
      month_name,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  dimension_group: uuid_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      week_of_year,
      month_name,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.uuid_ts ;;
  }

  measure: count {
    type: count
    drill_fields: [id, tickets.id]
  }


}
