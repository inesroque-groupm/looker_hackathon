# The name of this view in Looker is "Title Akas"
view: title_akas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: (SELECT * FROM `bigquery-public-data.imdb.title_akas` WHERE is_original_title= True);;


  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Attributes" in Explore.

  dimension: attributes {
    type: string
    description: "Additional terms to describe this alternative title, not enumerated"
    sql: ${TABLE}.attributes ;;
  }

  dimension: is_original_title {
    type: yesno
    description: "False: not original title; True: original title."
    sql: ${TABLE}.is_original_title ;;
  }

  dimension: language {
    type: string
    description: "The language of the title."
    sql: ${TABLE}.language ;;
  }

  dimension: ordering {
    type: number
    description: "A number to uniquely identify rows for a given title_id."
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

  dimension: region {
    type: string
    description: "The region for this version of the title."
    sql: ${TABLE}.region ;;
  }

  dimension: title {
    type: string
    description: "The localized title."
    sql: ${TABLE}.title ;;
  }

  dimension: title_id {
    type: string
    description: "A tconst, an alphanumeric unique identifier of the title."
    sql: ${TABLE}.title_id ;;
  }

  dimension: types {
    type: string
    description: "Enumerated set of attributes for this alternative title. One or more of the following: 'alternative', 'dvd', 'festival', 'tv', 'video', 'working', 'original', 'imdbDisplay'. New values may be added in the future without warning."
    sql: ${TABLE}.types ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
