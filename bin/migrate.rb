require_relative '../config/app'

Sequel.extension :migration
Sequel::Migrator.run(DB, 'db/migrations')
