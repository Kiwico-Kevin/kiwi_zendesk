view: tickets {
  sql_table_name: zendesk.tickets ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: assignee_id {
    type: number
    sql: ${TABLE}.assignee_id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: collaborator_ids {
    type: string
    sql: ${TABLE}.collaborator_ids ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.group_id ;;
  }

  dimension_group: loaded {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.loaded_at ;;
  }

  dimension: organization_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.organization_id ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }

  dimension: problem_id {
    type: number
    sql: ${TABLE}.problem_id ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension_group: received {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.received_at ;;
  }

  dimension: recipient {
    type: string
    sql: ${TABLE}.recipient ;;
  }

  dimension: requester_id {
    type: number
    sql: ${TABLE}.requester_id ;;
  }

  dimension: satisfaction_rating_comment {
    type: string
    sql: ${TABLE}.satisfaction_rating_comment ;;
  }

  dimension: satisfaction_rating_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.satisfaction_rating_id ;;
  }

  dimension: satisfaction_rating_reason {
    type: string
    sql: ${TABLE}.satisfaction_rating_reason ;;
  }

  dimension: satisfaction_rating_reason_id {
    type: number
    sql: ${TABLE}.satisfaction_rating_reason_id ;;
  }

  dimension: satisfaction_rating_score {
    type: string
    sql: ${TABLE}.satisfaction_rating_score ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: submitter_id {
    type: number
    sql: ${TABLE}.submitter_id ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: ticket_type {
    type: string
    sql: ${TABLE}.ticket_type ;;
  }

  dimension: ticket_type_optional {
    type: string
    sql: ${TABLE}.ticket_type_optional ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
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
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.uuid_ts ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      satisfaction_ratings.id,
      groups.name,
      groups.id,
      organizations.name,
      organizations.id,
      satisfaction_ratings.count,
      satisfaction_ratings_view.count,
      ticket_events.count,
      ticket_events_view.count,
      ticket_metrics.count,
      ticket_metrics_view.count
    ]
  }
}
