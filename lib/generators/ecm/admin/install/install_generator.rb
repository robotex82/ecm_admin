module Ecm
  module Admin
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "Installs the ECM Admin module"
        def generate_active_admin
          generate 'active_admin:install'
        end

#        def generate_migrations
#          generate 'ecm:cms_navigation:migrations'
#        end
#        
#        def generate_models
#          generate 'ecm:cms_navigation:models'
#        end

#        def generate_active_admin
#          generate 'ecm:cms_navigation:active_admin'
#        end              
#        
#        def generate_locales
#          generate 'ecm:cms_navigation:locales'
#        end
      end
    end
  end
end

