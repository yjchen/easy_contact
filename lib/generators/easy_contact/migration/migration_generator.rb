require 'rails/generators'
require 'rails/generators/migration'
require 'rails/generators/active_record'

module EasyContact
  class MigrationGenerator < Rails::Generators::Base
    include Rails::Generators::Migration

    desc 'add easy contact'

    source_root File.expand_path('../templates', __FILE__)

    def self.next_migration_number(path)
      ActiveRecord::Generators::Base.next_migration_number(path)
    end

    def create_migration_file
      migration_template 'migration.rb', 'db/migrate/easy_contact_migration'
    end
  end
end
