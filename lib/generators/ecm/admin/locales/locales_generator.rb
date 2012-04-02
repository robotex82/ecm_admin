module Ecm
  module Admin
    module Generators
      class LocalesGenerator < ::Rails::Generators::Base
        desc "Installs the needed locales"

        source_root File.expand_path('../templates', __FILE__)
        
        def generate_locales
          copy_file "ecm.admin.de.yml", "config/locales/ecm.admin.de.yml"
        end  
      end
    end
  end
end

