view: ports_coordinates {
  sql_table_name: `cdp-and-analytics-lab.PSA_POC_DS.Ports_Coordinates` ;;

  dimension: lat {
    type: number
    hidden: yes
    sql: ${TABLE}.Lat ;;
  }
  dimension: long {
    type: number
    hidden: yes
    sql: ${TABLE}.Long ;;
  }
  dimension: Location {
    type: location
    sql_latitude: ${lat} ;;
    sql_longitude: ${long} ;;
  }

  dimension: Port_Name {
    type: string
    sql: ${TABLE}.Port_Name ;;
  }

  measure: count {
    type: count
    drill_fields: [Port_Name]
  }
}
