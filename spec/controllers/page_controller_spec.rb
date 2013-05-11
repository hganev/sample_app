require 'spec_helper'

describe PageController do

  render_views

  before(:each) do
    ####
    @base_title = "RoR tutorial Sample App | "
  end

  describe "GET 'home'" do
    #tests existance of the page
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    #tests the page title
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
             :content => @base_title + "Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
            :content => @base_title + "Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
      get 'about'
      response.should have_selector("title",
                :content => @base_title + "About")
    end
  end

  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end

    it "should have the right title" do
      get 'help'
      response.should have_selector("title",
                  :content => "RoR tutorial Sample App | Help")
    end
  end
end