# Home Circuit Workouts

# require gems - SQLite
require 'sqlite3'

# create a SQLite3 database to store workout options in for user to access
db = SQLite3::Database.new("workout.db")