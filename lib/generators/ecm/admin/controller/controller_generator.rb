require 'rails/generators/migration'

module Ecm
  module Admin
    module Generators
      class ControllerGenerator < Rails::Generators::Base
        desc "Generates the admin controller"
             
        source_root File.expand_path('../../../../../../', __FILE__)
        
        def generate_controller
          template "app/controllers/admin_controller.rb", "app/controllers/admin_controller.rb"
        end  
      end
    end
  end
end        
