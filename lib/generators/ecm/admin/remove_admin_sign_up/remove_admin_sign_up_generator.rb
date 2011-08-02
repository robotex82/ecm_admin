module Ecm
  module Admin
    module Generators
      class RemoveAdminSignUpGenerator < Rails::Generators::Base
        desc "Removes the possibility to sign up for admins."

        
        def generate_remove_admin_sign_up
          gsub_file 'config/routes.rb', /devise_for :admins/, 'devise_for :admins, :skip => :registrations'
          inject_into_file "config/initializers/devise.rb", "\n  config.scoped_views = true", :after => "  # config.scoped_views = false"          
        end
        
      end
    end
  end
end        
