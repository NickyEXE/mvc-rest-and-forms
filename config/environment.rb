# Load Gems

require 'bundler'
Bundler.require
Dotenv.load

# Load files
# require_relative "../app/controllers/application_controller"
# require_relative "../app/models/breaking_bad_api.rb"
# require_relative "../app/models/character.rb"
# require_relative "../app/models/message.rb"
# require_relative "../app/models/user.rb"
require_all "app"

# Set up database

ActiveRecord::Base.establish_connection({
  adapter: "sqlite3",
  database: "db/development.sqlite"
})
