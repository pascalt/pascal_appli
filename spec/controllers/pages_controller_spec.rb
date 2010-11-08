require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'menu'" do
    it "devrait avoir un H1 Menu" do
      get 'menu'
      response.should have_selector("h1", :content=>"Menu")
    end
    it "should be successful" do
      get 'menu'
      response.should be_success
    end
   
    
  end

end
