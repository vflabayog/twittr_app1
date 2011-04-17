require 'spec_helper'

describe PagesController do
render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => "Sample Twitter-Like Application | Home")
    end
    
    it "should have content" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/ #visit rubular for more regex
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  
    it "should have a title" do
      get 'contact'
      response.should have_selector("title", :content => "Sample Twitter-Like Application | Contact")
    end

      it "should have content" do
        get 'contact'
        response.body.should_not =~ /<body>\s*<\/body>/ #visit rubular for more regex
    end  
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

    it "should have a title" do
      get 'about'
      response.should have_selector("title", :content => "Sample Twitter-Like Application | About")
    end
    
    it "should have content" do
      get 'about'
      response.body.should_not =~ /<body>\s*<\/body>/ #visit rubular for more regex
    end
  end
  
end
