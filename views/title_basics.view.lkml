# The name of this view in Looker is "Title Basics"
view: title_basics {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.

  sql_table_name: (SELECT * FROM `bigquery-public-data.imdb.title_basics` WHERE title_type='movie' or title_type='tvEpisode'
  or title_type='tvSeries') ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "End Year" in Explore.

  dimension: end_year {
    type: number
    description: "TV Series end year."
    sql: ${TABLE}.end_year ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_end_year {
    type: sum
    sql: ${end_year} ;;
  }

  measure: average_end_year {
    type: average
    sql: ${end_year} ;;
  }

  dimension: genres {
    type: string
    description: "Includes up to three genres associated with the title."
    sql: ${TABLE}.genres ;;
  }

  dimension: is_adult {
    type: number
    description: "0: non-adult title; 1: adult title."
    sql: ${TABLE}.is_adult ;;
  }

  dimension: original_title {
    type: string
    description: "Original title, in the original language."
    sql: ${TABLE}.original_title ;;
  }

  dimension: primary_title {
    type: string
    description: "The more popular title / the title used by the filmmakers on promotional materials at the point of release."
    sql: ${TABLE}.primary_title ;;
  }

  dimension: runtime_minutes {
    type: number
    description: "Primary runtime of the title, in minutes."
    sql: ${TABLE}.runtime_minutes ;;
  }

  dimension: start_year {
    type: number
    description: "Represents the release year of a title. In the case of TV Series, it is the series start year."
    sql: ${TABLE}.start_year ;;
  }

  dimension: decade {
    type: string
    description: "Represents the release year of a title. In the case of TV Series, it is the series start year."
    sql: SUBSTR(${TABLE}.start_year, -1, -1) ;;
  }

  dimension: tconst {
    type: string
    description: "Alphanumeric unique identifier of the title."
    sql: ${TABLE}.tconst ;;
  }

  dimension: title_type {
    type: string
    description: "The type/format of the title (e.g. movie, short, tvseries, tvepisode, video, etc)."
    sql: ${TABLE}.title_type;;

  }


  measure: count {
    type: count
    drill_fields: []
  }
}