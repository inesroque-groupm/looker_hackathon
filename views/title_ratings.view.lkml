# The name of this view in Looker is "Title Ratings"
view: title_ratings {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: (SELECT * FROM `bigquery-public-data.imdb.title_ratings` WHERE average_rating is not null or num_votes is not null) ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Average Rating" in Explore.

  dimension: average_rating {
    type: number
    description: "Weighted average of all the individual user ratings."
    sql: ${TABLE}.average_rating ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_average_rating {
    type: sum
    sql: ${average_rating} ;;
  }

  measure: average_average_rating {
    type: average
    sql: ${average_rating} ;;
  }

  dimension: num_votes {
    type: number
    description: "Number of votes the title has received."
    sql: ${TABLE}.num_votes ;;
  }

  dimension: tconst {
    primary_key: yes
    type: string
    description: "Alphanumeric unique identifier for title."
    sql: ${TABLE}.tconst ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
