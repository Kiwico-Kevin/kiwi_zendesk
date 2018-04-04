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

  dimension: ticket_category {
    sql: CASE
            WHEN ${TABLE}.ticket_type LIKE 'address%' THEN 'address_shipping'
            WHEN ${TABLE}.ticket_type LIKE 'agent_save%' THEN 'agent_save'
            WHEN ${TABLE}.ticket_type LIKE 'auto_renew%' THEN 'cancel'
            WHEN ${TABLE}.ticket_type LIKE 'billing%' THEN 'sub_question'
            WHEN ${TABLE}.ticket_type LIKE 'brand_switch%' THEN 'sub_switch'
            WHEN ${TABLE}.ticket_type LIKE 'cancel%' THEN 'cancel'
            WHEN ${TABLE}.ticket_type LIKE 'crate%' THEN 'sub_question'
            WHEN ${TABLE}.ticket_type LIKE 'damaged%' THEN 'crate_issue'
            WHEN ${TABLE}.ticket_type LIKE 'deluxe%' THEN 'sub_switch'
            WHEN ${TABLE}.ticket_type LIKE 'donation%' THEN 'misc'
            WHEN ${TABLE}.ticket_type LIKE 'duplicate%' THEN 'crate_issue'
            WHEN ${TABLE}.ticket_type LIKE 'every%' THEN 'sub_switch'
            WHEN ${TABLE}.ticket_type LIKE 'first%' THEN 'address_issue'
            WHEN ${TABLE}.ticket_type LIKE 'fraud%' THEN 'misc'
            WHEN ${TABLE}.ticket_type LIKE 'ghost%' THEN 'sub_question'
            WHEN ${TABLE}.ticket_type LIKE 'gift%' THEN 'sub_question'
            WHEN ${TABLE}.ticket_type LIKE 'graduate%' THEN 'sub_switch'
            WHEN ${TABLE}.ticket_type LIKE 'group%' THEN 'sub_question'
            WHEN ${TABLE}.ticket_type LIKE 'intl%' THEN 'international'
            WHEN ${TABLE}.ticket_type LIKE 'marketing%' THEN 'misc'
            WHEN ${TABLE}.ticket_type LIKE 'materials%' THEN 'crate_issue'
            WHEN ${TABLE}.ticket_type LIKE 'missing%' THEN 'crate_issue'
            WHEN ${TABLE}.ticket_type LIKE 'my_%' THEN 'sub_question'
            WHEN ${TABLE}.ticket_type LIKE 'needs%' THEN 'new_order'
            WHEN ${TABLE}.ticket_type LIKE 'new%' THEN 'new_order'
            WHEN ${TABLE}.ticket_type LIKE 'negative%' THEN 'crate_issue'
            WHEN ${TABLE}.ticket_type LIKE 'olark%' THEN 'chat'
            WHEN ${TABLE}.ticket_type LIKE 'order_error%' THEN 'crate_issue'
            WHEN ${TABLE}.ticket_type LIKE 'other%' THEN 'misc'
            WHEN ${TABLE}.ticket_type LIKE 'packing%' THEN 'crate_issue'
            WHEN ${TABLE}.ticket_type LIKE 'phone%' THEN 'chat'
            WHEN ${TABLE}.ticket_type LIKE 'pause%' THEN 'sub_switch'
            WHEN ${TABLE}.ticket_type LIKE 'refer%' THEN 'sub_question'
            WHEN ${TABLE}.ticket_type LIKE 'renew%' THEN 'sub_switch'
            WHEN ${TABLE}.ticket_type LIKE 'replacement%' THEN 'crate_issue'
            WHEN ${TABLE}.ticket_type LIKE 'return%' THEN 'crate_issue'
            WHEN ${TABLE}.ticket_type LIKE 'schools%' THEN 'schools'
            WHEN ${TABLE}.ticket_type LIKE 'shipping%' THEN 'address_shipping'
             WHEN ${TABLE}.ticket_type LIKE 'shop%' THEN 'new_order'
            WHEN ${TABLE}.ticket_type LIKE 'paypal%' THEN 'new_order'
            WHEN ${TABLE}.ticket_type LIKE 'promo%' THEN 'new_order'
            WHEN ${TABLE}.ticket_type LIKE 'purchase%' THEN 'new_order'
            WHEN ${TABLE}.ticket_type LIKE 'refund%' THEN 'cancel'
            WHEN ${TABLE}.ticket_type LIKE 'start%' THEN 'sub_question'
            WHEN ${TABLE}.ticket_type LIKE 'subscription%' THEN 'sub_question'
            WHEN ${TABLE}.ticket_type LIKE 'suspended%' THEN 'sub_question'
            WHEN ${TABLE}.ticket_type LIKE 'survey%' THEN 'crate_issue'
            WHEN ${TABLE}.ticket_type LIKE 'when%' THEN 'address_shipping'
            WHEN ${TABLE}.ticket_type LIKE 'wismo%' THEN 'address_shipping'
            WHEN ${TABLE}.ticket_type is null THEN 'not_tagged'
            ELSE 'misc'
            END ;;
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
