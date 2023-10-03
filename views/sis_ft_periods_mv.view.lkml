view: sis_ft_periods_mv {
  sql_table_name: `PSA_POC_DS.SIS_FT_PERIODS_MV` ;;

  dimension: mnth_arb {
    type: string
    sql: ${TABLE}.MNTH_ARB ;;
  }
  dimension: mnth_eng {
    type: string
    sql: ${TABLE}.MNTH_ENG ;;
  }
  dimension: month {
    type: number
    sql: ${TABLE}.MONTH ;;
  }
  dimension: qrt {
    type: string
    sql: ${TABLE}.QRT ;;
  }
  dimension: qrt_no {
    type: number
    sql: ${TABLE}.QRT_NO ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.YEAR ;;
  }
  dimension: year_month {
    type: number
    sql: ${TABLE}.YEAR_MONTH ;;
  }
  measure: count {
    type: count
  }
}
