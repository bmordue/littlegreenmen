# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'active_record/fixtures'
ActiveRecord::Fixtures.create_fixtures(Rails.root.join('spec/fixtures'), 'actors')
ActiveRecord::Fixtures.create_fixtures(Rails.root.join('spec/fixtures'), 'game_actions')
ActiveRecord::Fixtures.create_fixtures(Rails.root.join('spec/fixtures'), 'game_events')
ActiveRecord::Fixtures.create_fixtures(Rails.root.join('spec/fixtures'), 'games')
ActiveRecord::Fixtures.create_fixtures(Rails.root.join('spec/fixtures'), 'players')
ActiveRecord::Fixtures.create_fixtures(Rails.root.join('spec/fixtures'), 'turns')
