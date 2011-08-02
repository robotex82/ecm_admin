require 'rails/generators/migration'

module Ecm
  module Admin
    module Generators
      class InstallGenerator < Rails::Generators::Base
        desc "Generates the admin user and rails admin"
             
        source_root File.expand_path('../templates', __FILE__)
        
        def generate_create_admin_user
          generate 'devise', 'Admin'
        end        
        
        def generate_rails_admin
          run('bundle exec rake rails_admin:install model_name=admin')
        end    
      end
    end
  end
end        
