connection: "formacion_looker_ventas"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: ventas_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ventas_analytics_default_datagroup

explore: d_categoria {}

explore: d_fecha {}

explore: d_pais {}

explore: d_tipo_tarjeta {}

explore: h_ventas {}

