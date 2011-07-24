require 'rails/generators/migration'

module Ecm
  module Admin
    module Generators
      class InstallGenerator < Rails::Generators::Base
        desc "Installs devise, creates the admin " <<
             "user and generates the Admin Controller."
             
        source_root File.expand_path('../templates', __FILE__)

        def generate_ecm_frontend
          generate 'ecm:frontend:install'
        end

        def generate_devise
          generate 'devise:install'
        end
        
        def generate_create_admin_user
          generate 'devise', 'Admin'
        end        
        
        def generate_rails_admin
          run('bundle exec rake rails_admin:install model_name=admin')
        end
        
        def generate_admin_controller
          options = " --controller-specs=false --no-helper"
          generate("controller", "Admin", "index", options)
        end
        
        def generate_remove_admin_registrations
          gsub_file 'config/routes.rb', /devise_for :admins/, 'devise_for :admins, :skip => :registrations'
          inject_into_file "config/initializers/devise.rb", "  config.scoped_views = true", :after => "  # config.scoped_views = false"          
        end
        
        def generate_admin_controller_content
          inject_into_class "app/controllers/admin_controller.rb", "AdminController" do
<<-eos
  layout 'ecm/admin'
  before_filter :authenticate_admin!
eos
          end
        end 
        
      end
    end
  end
end        
