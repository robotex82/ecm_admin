require 'spec_helper'

describe AdminController do
  describe "GET 'index'" do
    describe "as a visitor" do
      it "should deny access" do
        get :index
        response.should redirect_to(new_admin_session_path)
      end    
    end # describe "as a visitor"
    
    describe "as a signed in admin" do
      before(:each) do
        sign_in Factory(:admin)
      end
      
      it "should render the correct template" do
        get :index      
        response.should render_template('index')
      end    
    end # describe "as a signed in admin"    
  end
end
