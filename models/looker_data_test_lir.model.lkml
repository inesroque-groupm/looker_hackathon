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

explore: title_basics {}

# explore: reviews {}
explore: title_akas {}

explore: title_crew {}
explore: title_episode {}

explore: title_ratings {}

explore: title_principals {
  join: name_basics {
    relationship: many_to_one
    type: left_outer
    sql_on: ${title_principals.nconst} = ${name_basics.nconst};;
  }
}


# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.
