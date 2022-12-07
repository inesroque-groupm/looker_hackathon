# The name of this view in Looker is "Title Crew"
view: title_crew {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `bigquery-public-data.imdb.title_crew`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Directors" in Explore.

  dimension: directors {
    type: string
    description: "Strinng of nconsts - director(s) of the given title."
    sql: ${TABLE}.directors ;;
  }

  dimension: tconst {
    type: string
    description: "Alphanumeric unique identifier of the title."
    sql: ${TABLE}.tconst ;;
  }

  dimension: writers {
    type: string
    description: "String of nconsts - writer(s) of the given title."
    sql: ${TABLE}.writers ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
