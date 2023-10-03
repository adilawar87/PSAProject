view: re_exports {
  sql_table_name: `PSA_POC_DS.ReExports` ;;

  dimension: hs8 {
    type: number
    sql: ${TABLE}.HS8 ;;
  }
  dimension: month {
    type: number
    sql: ${TABLE}.MONTH ;;
  }
  dimension: qatar_port {
    type: number
    sql: ${TABLE}.QATAR_PORT ;;
  }
  dimension: qrt {
    type: number
    sql: ${TABLE}.QRT ;;
  }
  dimension: qty {
    type: number
    sql: ${TABLE}.QTY ;;
  }
  dimension: trade_country {
    type: number
    sql: ${TABLE}.TRADE_COUNTRY ;;
  }
  dimension: trade_type {
    type: string
    sql: ${TABLE}.TRADE_TYPE ;;
  }
  dimension: value {
    type: number
    sql: ${TABLE}.VALUE ;;
  }
  dimension: weight {
    type: number
    sql: ${TABLE}.WEIGHT ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.YEAR ;;
  }
  measure: count {
    type: count
  }
}
