view: d_pais {
  sql_table_name: "VENTAS"."d_pais" ;;

  dimension: desc_pais {
    type: string
    sql: ${TABLE}."DESC_PAIS" ;;
  }
  dimension: id_pais {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID_PAIS" ;;
  }
  measure: count {
    type: count
  }
}
