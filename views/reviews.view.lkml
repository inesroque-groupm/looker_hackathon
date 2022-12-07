# The name of this view in Looker is "Reviews"
view: reviews {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `bigquery-public-data.imdb.reviews`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Label" in Explore.

  dimension: label {
    type: string
    description: "It has three categories Negative, Positive and Unsupervised. All Unsupervised label has only split equals-to train."
    sql: ${TABLE}.label ;;
  }

  dimension: movie_id {
    type: string
    description: "UniqueId for the movie in IMDb."
    sql: ${TABLE}.movie_id ;;
  }

  dimension: movie_url {
    type: string
    description: "Movie url for corresponding movie_id"
    sql: ${TABLE}.movie_url ;;
  }

  dimension: review {
    type: string
    description: "User review's in IMDb."
    sql: ${TABLE}.review ;;
  }

  dimension: reviewer_rating {
    type: number
    description: "Reviewer rating for particular movie in IMDb. For train-unsupervised, reviewer_rating is NULL."
    sql: ${TABLE}.reviewer_rating ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_reviewer_rating {
    type: sum
    sql: ${reviewer_rating} ;;
  }

  measure: average_reviewer_rating {
    type: average
    sql: ${reviewer_rating} ;;
  }

  dimension: split {
    type: string
    description: "It has two categories test and train."
    sql: ${TABLE}.split ;;
  }

  dimension: title {
    type: string
    description: "Title of the movie for corresponding movie_id"
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
