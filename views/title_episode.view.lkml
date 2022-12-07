# The name of this view in Looker is "Title Episode"
view: title_episode {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `bigquery-public-data.imdb.title_episode`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Episode Number" in Explore.

  dimension: episode_number {
    type: number
    description: "Episode number of the tconst in the TV series."
    sql: ${TABLE}.episode_number ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_episode_number {
    type: sum
    sql: ${episode_number} ;;
  }

  measure: average_episode_number {
    type: average
    sql: ${episode_number} ;;
  }

  dimension: parent_tconst {
    type: string
    description: "Alphanumeric identifier of the parent TV Series."
    sql: ${TABLE}.parent_tconst ;;
  }

  dimension: season_number {
    type: number
    description: "Season number the episode belongs to."
    sql: ${TABLE}.season_number ;;
  }

  dimension: tconst {
    type: string
    description: "Alphanumeric identifier of episode."
    sql: ${TABLE}.tconst ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
