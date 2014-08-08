# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'active_record/fixtures'
ActiveRecord::Fixtures.create_fixtures(Rails.root.join('spec/fixtures'), 'actors.yml')
ActiveRecord::Fixtures.create_fixtures(Rails.root.join('spec/fixtures'), 'game_actions.yml')
ActiveRecord::Fixtures.create_fixtures(Rails.root.join('spec/fixtures'), 'game_events.yml')
ActiveRecord::Fixtures.create_fixtures(Rails.root.join('spec/fixtures'), 'games.yml')
ActiveRecord::Fixtures.create_fixtures(Rails.root.join('spec/fixtures'), 'players.yml')
ActiveRecord::Fixtures.create_fixtures(Rails.root.join('spec/fixtures'), 'turns.yml')
