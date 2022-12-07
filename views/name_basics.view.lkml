# The name of this view in Looker is "Name Basics"
view: name_basics {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `bigquery-public-data.imdb.name_basics`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Birth Year" in Explore.

  dimension: birth_year {
    type: number
    description: "Birth year in YYYY format."
    sql: ${TABLE}.birth_year ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_birth_year {
    type: sum
    sql: ${birth_year} ;;
  }

  measure: average_birth_year {
    type: average
    sql: ${birth_year} ;;
  }

  dimension: death_year {
    type: number
    description: "Death year in YYYY format if applicable."
    sql: ${TABLE}.death_year ;;
  }

  dimension: known_for_titles {
    type: string
    description: "Titles the person is known for."
    sql: ${TABLE}.known_for_titles ;;
  }

  dimension: nconst {
    type: string
    description: "Alphanumeric unique identifier of the name/person."
    sql: ${TABLE}.nconst ;;
  }

  dimension: primary_name {
    type: string
    description: "Name by which the person is most often credited."
    sql: ${TABLE}.primary_name ;;
  }

  dimension: primary_profession {
    type: string
    description: "The top-3 professions of the person."
    sql: ${TABLE}.primary_profession ;;
  }

  measure: count {
    type: count
    drill_fields: [primary_name]
  }
}
