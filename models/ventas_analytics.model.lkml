connection: "formacion_looker_ventas"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: ventas_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ventas_analytics_default_datagroup

explore: ventas {
  from: h_ventas

  join: fecha {
    from: d_fecha
    type:  inner
    relationship:  many_to_one
    sql_on: ${ventas.id_fecha} = ${fecha.id_fecha} ;;
  }

}
