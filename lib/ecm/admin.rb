module Ecm
  module Admin
    class Engine < Rails::Engine
      config.to_prepare do
        ApplicationController.helper(Ecm::AdminHelper)
        Devise::SessionsController.layout Proc.new { |controller| controller.devise_controller? && controller.resource_name == :admin ? 'ecm/admin' : 'application' }

      end  
    end
    
    def self.config(&block)
      @@config ||= Engine.config
      yield @@config if block
      return @@config
    end
  end  
end
