view: sis_ft_items_mv {
  sql_table_name: `PSA_POC_DS.SIS_FT_ITEMS_MV` ;;

  dimension: hs2 {
    type: number
    sql: ${TABLE}.HS2 ;;
  }
  dimension: hs2_arb {
    type: string
    sql: ${TABLE}.HS2_ARB ;;
  }
  dimension: hs2_eng {
    type: string
    sql: ${TABLE}.HS2_ENG ;;
  }
  dimension: hs4 {
    type: number
    sql: ${TABLE}.HS4 ;;
  }
  dimension: hs4_arb {
    type: string
    sql: ${TABLE}.HS4_ARB ;;
  }
  dimension: hs4_eng {
    type: string
    sql: ${TABLE}.HS4_ENG ;;
  }
  dimension: hs8 {
    type: number
    sql: ${TABLE}.HS8 ;;
  }
  dimension: hs8_arb {
    type: string
    sql: ${TABLE}.HS8_ARB ;;
  }
  dimension: hs8_eng {
    type: string
    sql: ${TABLE}.HS8_ENG ;;
  }
  dimension: sitc1 {
    type: number
    sql: ${TABLE}.SITC1 ;;
  }
  dimension: sitc1_arb {
    type: string
    sql: ${TABLE}.SITC1_ARB ;;
  }
  dimension: sitc1_eng {
    type: string
    sql: ${TABLE}.SITC1_ENG ;;
  }
  measure: count {
    type: count
  }
}
