view: sis_ft_trade_types {
  sql_table_name: `PSA_POC_DS.SIS_FT_TRADE_TYPES` ;;

  dimension: string_field_0 {
    type: string
    sql: ${TABLE}.string_field_0 ;;
  }
  dimension: string_field_1 {
    type: string
    sql: ${TABLE}.string_field_1 ;;
  }
  dimension: string_field_2 {
    type: string
    sql: ${TABLE}.string_field_2 ;;
  }
  measure: count {
    type: count
  }
}
