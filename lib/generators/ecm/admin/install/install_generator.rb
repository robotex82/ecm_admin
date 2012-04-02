module Ecm
  module Admin
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "Installs the ECM Admin module"
        def generate_active_admin
          generate 'active_admin:install'
        end
        
        def generate_locales
          generate 'ecm:admin:locales'
        end
      end
    end
  end
end

