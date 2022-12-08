# Define the database connection to be used for this model.
connection: "lookerdata"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: looker_data_test_lir_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_data_test_lir_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Looker Data Test Lir"


explore: base {
  view_name: title_basics

  join: title_akas {
    relationship: one_to_many
    type: full_outer
    sql_on: ${title_akas.title_id} = ${title_basics.tconst};;
  }

  join: title_ratings {
    relationship: one_to_one
    type: full_outer
    sql_on: ${title_ratings.tconst} = ${title_basics.tconst};;
  }

  join: title_principals {
    relationship: one_to_many
    type: full_outer
    sql_on: ${title_principals.tconst} = ${title_basics.tconst};;
  }

  join: name_basics {
    relationship: many_to_one
    type: left_outer
    sql_on: ${title_principals.nconst} = ${name_basics.nconst};;
  }

  join: title_crew {
    type: full_outer
    relationship: one_to_one
    sql_on: ${title_basics.tconst} = ${title_crew.tconst} ;;
  }

  join: genre {
    sql: LEFT JOIN UNNEST(SPLIT(${title_basics.genres},',')) as genre ;;
    relationship: one_to_many
  }
}


explore: series {
  extends: [base]
  sql_always_where: ${title_basics.title_type} = 'tvSeries' or ${title_basics.title_type} = 'tvEpisode';;
  join: title_episode {
    type: full_outer
    sql_on: ${title_basics.tconst} = ${title_episode.parent_tconst} ;;
    relationship: one_to_many
  }
}

explore: movies {
  label: "Base_2"
  extends: [base]
  #sql_always_where: ${title_basics.title_type} = 'movie' ;;
}


# view: genre {
#   dimension: genre {
#     sql: ${TABLE} ;;
#   }
# }

# explore: title_basics {
#   join: genre {
#     sql: LEFT JOIN UNNEST(SPLIT(${title_basics.genres},',')) as genre ;;
#     relationship: one_to_many
#   }

# }
