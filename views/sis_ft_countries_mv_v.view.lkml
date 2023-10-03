view: sis_ft_countries_mv_v {
  sql_table_name: `PSA_POC_DS.SIS_FT_COUNTRIES_MV_V` ;;

  dimension: code {
    type: number
    sql: ${TABLE}.CODE ;;
  }
  dimension: country_int_code {
    type: number
    sql: ${TABLE}.COUNTRY_INT_CODE ;;
  }
  dimension: country_letter_code {
    type: string
    sql: ${TABLE}.COUNTRY_LETTER_CODE ;;
  }
  dimension: desc_arb {
    type: string
    sql: ${TABLE}.DESC_ARB ;;
  }
  dimension: desc_eng {
    type: string
    sql: ${TABLE}.DESC_ENG ;;
  }
  measure: count {
    type: count
  }
}
