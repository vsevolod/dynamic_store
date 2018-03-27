require 'rails/generators'
require 'rails/generators/base'

module DynamicStore
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_migration
      template 'migration.rb', "db/migrate/#{migration_name}"
    end

    private

    def migration_name
      prefix = Time.now.strftime('%Y%m%d%H%H%S')
      "#{prefix}_create_dynamic_store_dictionaries.rb"
    end
  end
end
