view: satisfaction_ratings_view {
  sql_table_name: zendesk.satisfaction_ratings_view ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: assignee_id {
    type: string
    sql: ${TABLE}.assignee_id ;;
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

  dimension: group_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.group_id ;;
  }

  dimension_group: loaded {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month_name,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.loaded_at ;;
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

  dimension: requester_id {
    type: string
    sql: ${TABLE}.requester_id ;;
  }

  dimension: score {
    type: string
    sql: ${TABLE}.score ;;
  }

  measure: score_value {
    type: average
    sql:
    CASE
    WHEN ${TABLE}.score LIKE '%good%' then 1
    WHEN ${TABLE}.score LIKE '%bad%' then 0
    ELSE NULL END;;
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

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
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
    drill_fields: [id, groups.name, groups.id, tickets.id]
  }
}
