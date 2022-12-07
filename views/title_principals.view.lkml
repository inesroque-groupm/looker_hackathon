# The name of this view in Looker is "Title Principals"
view: title_principals {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `bigquery-public-data.imdb.title_principals`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Category" in Explore.

  dimension: category {
    type: string
    description: "The category of job that person was in."
    sql: ${TABLE}.category ;;
  }

  dimension: characters {
    type: string
    description: "The name of the character played if applicable."
    sql: ${TABLE}.characters ;;
  }

  dimension: job {
    type: string
    description: "The specific job title if applicable."
    sql: ${TABLE}.job ;;
  }

  dimension: nconst {
    type: string
    description: "Alphanumeric unique identifier of the name/person."
    sql: ${TABLE}.nconst ;;
  }

  dimension: ordering {
    type: number
    description: "a number to uniquely identify rows for a given title_id."
    sql: ${TABLE}.ordering ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_ordering {
    type: sum
    sql: ${ordering} ;;
  }

  measure: average_ordering {
    type: average
    sql: ${ordering} ;;
  }

  dimension: tconst {
    type: string
    description: "Alphanumeric unique identifier of the title."
    sql: ${TABLE}.tconst ;;
  }

  dimension: compound_primary_key {
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.tconst || '-' ||  ${TABLE}.nconst ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
