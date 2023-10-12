view: countrycodes {
  derived_table: {
    sql: SELECT * FROM `cdp-and-analytics-lab.looker_demo.CountryCodes` co
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: country {
    type: string
    sql: case when ${TABLE}.country = 'United States' then 'United States Of America' else ${TABLE}.country end ;;
    map_layer_name: countries
  }

  dimension: usa_state_code {
    type: string
    sql: ${TABLE}.usa_state_code ;;
  }

  dimension: usa_state_latitude {
    type: number
    sql: ${TABLE}.usa_state_latitude ;;
  }

  dimension: OriginQatar {
    type: string
    sql:case when ${TABLE}.country = 'Qatar' then ${TABLE}.country else null end ;;
    map_layer_name: countries
  }

  dimension: Qatarlatitude {
    type: number
    sql:  25.354826 ;;
  }


  dimension: Qatarlongitude {
    type: number
    sql:  51.183884;;
  }

  dimension: locationQatar {
    type: location
    sql_latitude: ${Qatarlatitude} ;;
    sql_longitude: ${Qatarlongitude};;
  }



  dimension: usa_state_longitude {
    type: number
    sql: ${TABLE}.usa_state_longitude ;;
  }

  dimension: usa_state {
    type: string
    sql: ${TABLE}.usa_state ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

  set: detail {
    fields: [
      country_code,
      latitude,
      longitude,
      country,
      usa_state_code,
      usa_state_latitude,
      usa_state_longitude,
      usa_state,
      location
    ]
  }
}
