connection: "mannai_bigquery_db"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: psa_project_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: psa_project_test_default_datagroup

explore: sis_ft_items_mv {}

explore: sis_ft_countries_mv_v {}

explore: import_export_vw {
  join: countrycodes {
    type: left_outer
    relationship: many_to_one
    sql_on: ${import_export_vw.country_name} = ${countrycodes.country} ;;
  }
}

explore: imports {}

explore: sis_ft_trade_types {}

explore: re_exports {}

explore: sis_ft_periods_mv {}

explore: sis_ft_ports_mv {}

explore: ports_coordinates {}
