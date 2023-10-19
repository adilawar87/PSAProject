view: import_export_vw {
  sql_table_name: `PSA_POC_DS.ImportExport_VW_V2` ;;

##  dimension: country_int_code {
##    type: number
##    sql: ${TABLE}.Country_INT_CODE ;;
##  }

 dimension: rowid {
    type: string
    primary_key: yes
    sql: ${TABLE}.RowId ;;
  }

##  dimension: country_letter_code {
##    type: string
##    sql: ${TABLE}.COUNTRY_LETTER_CODE ;;
##  }
  dimension: country_name {
    type: string
    sql: ${TABLE}.CountryName ;;
    map_layer_name: countries
  }
  dimension: country_name_arb {
    label: "دولة المنشأ"
    type: string
    sql: ${TABLE}.CountryName_ARB ;;
  }
  dimension: hs8_arb {
    type: string
    label: "التفاصيل"
    sql: ${TABLE}.HS8_ARB ;;
  }
  dimension: hs8_eng {
    type: string
    sql: ${TABLE}.HS8_ENG ;;
  }
  dimension: item_code {
    type: number
    label: "HS8"
    sql: ${TABLE}.ItemCode ;;
    value_format_name: id
  }

## dimension: item_desc {
##    type: string
##    sql: ${TABLE}.Item_desc ;;
##  }


##  dimension: item_desc_arb {
##    type: string
##    sql: ${TABLE}.Item_desc_ARB ;;
##  }

##  dimension: mode_arb {
##    type: string
##    sql: ${TABLE}.MODE_ARB ;;
##  }
##  dimension: mode_eng {
##    type: string
##    sql: ${TABLE}.MODE_ENG ;;
##  }

  dimension: month {
    type: number
    sql: ${TABLE}.Month ;;
  }

  dimension: MonthName {
    type: string
    sql: case when ${month}=1 then 'Jan'
              when ${month}=2 then 'Feb'
              when ${month}=3 then 'Mar'
              when ${month}=4 then 'Apr'
              when ${month}=5 then 'May'
              when ${month}=6 then 'Jun'
              when ${month}=7 then 'Jul'
              when ${month}=8 then 'Aug'
              when ${month}=9 then 'Sep'
              when ${month}=10 then 'Oct'
              when ${month}=11 then 'Nov'
              Else 'Dec'
              End ;;

  }

##  dimension: port_code {
##    type: number
##    sql: ${TABLE}.PORT_CODE ;;
##  }
##  dimension: port_name_arb {
##    type: string
##    sql: ${TABLE}.PORT_NAME_ARB ;;
##  }
  dimension: port_name_eng {
    type: string
    sql: ${TABLE}.PORT_NAME_ENG ;;
  }
  dimension: qatar_port {
    type: number
    sql: ${TABLE}.QATAR_PORT ;;
  }

  dimension: qrt {
    type: number
    sql: ${TABLE}.QRT ;;
  }

  dimension: Quarter {
    type: string
    sql:  case when ${qrt} = 1 then 'Q1'
               when ${qrt} = 2  then 'Q2'
               when ${qrt} = 3  then 'Q3'
          Else 'Q4'
          End;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.QTY ;;
  }

##  dimension: sitc1_arb {
##    type: string
##    sql: ${TABLE}.SITC1_ARB ;;
##  }


##  dimension: sitc1_eng {
##    type: string
##    sql: ${TABLE}.SITC1_ENG ;;
##  }

  dimension: trade_country {
    type: number
    sql: ${TABLE}.TRADE_COUNTRY ;;
  }

  dimension: trade_type {
    type: string
    sql: ${TABLE}.TRADE_TYPE ;;
  }
  dimension: trade_typename {
    type: string
    sql: ${TABLE}.Trade_typename ;;
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
    value_format_name: id
  }
  measure: count {
    type: count
    drill_fields: [country_name, trade_typename]
  }
  measure: TotalQuantity {
    type: sum
    sql: ${qty} ;;
  }

  measure: TotalSum {
    hidden: yes
    type: sum
    sql: ${qty} ;;
  }

  measure: TotalValue {
    label: "Total Volume"
    type: sum
    sql: ${value} ;;
    value_format: "0.00,,, \" M\""

  }

  measure: TotalImport {
    type: sum
    sql: Case when ${trade_typename} = 'Imports' then ${value} else 0 end ;;
    value_format: "0.00,,, \" M\""

  }

  measure: TotalExport {
    type: sum
    sql: Case when ${trade_typename} = 'ReExports' then ${value} else 0 end ;;
    value_format: "0.00,,, \" M\""

  }

  measure: TotalWeight {
    type: sum
    sql: ${weight} ;;
  }
}
