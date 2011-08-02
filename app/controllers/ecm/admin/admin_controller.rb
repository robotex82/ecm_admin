class Ecm::Admin::AdminController < ApplicationController
  layout 'ecm/admin'
  before_filter :authenticate_admin!
end  
