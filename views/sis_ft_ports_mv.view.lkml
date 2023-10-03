view: sis_ft_ports_mv {
  sql_table_name: `PSA_POC_DS.SIS_FT_PORTS_MV` ;;

  dimension: desc_arb {
    type: string
    sql: ${TABLE}.DESC_ARB ;;
  }
  dimension: desc_eng {
    type: string
    sql: ${TABLE}.DESC_ENG ;;
  }
  dimension: mode_arb {
    type: string
    sql: ${TABLE}.MODE_ARB ;;
  }
  dimension: mode_eng {
    type: string
    sql: ${TABLE}.MODE_ENG ;;
  }
  dimension: port_code {
    type: number
    sql: ${TABLE}.PORT_CODE ;;
  }
  dimension: port_mode {
    type: string
    sql: ${TABLE}.PORT_MODE ;;
  }
  measure: count {
    type: count
  }
}
