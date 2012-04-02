module Ecm
  module Admin
    module Generators
      class AdminUserResourceGenerator < ::Rails::Generators::Base
        desc "Generates the admin interface for admin users"

        source_root File.expand_path('../templates', __FILE__)
        
        def generate_resource
          copy_file "admin_user.de.yml", "config/locales/admin_user.de.yml"
          copy_file "admin_users.rb", "app/admin/admin_users.rb"          
        end  
      end
    end
  end
end

