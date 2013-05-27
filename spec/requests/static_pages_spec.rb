require 'spec_helper'

describe "StaticPages" do
  describe "HomePage (GET /)" do
    it "shoud have the title '首页 | 爱知学堂'" do
      visit '/'
      page.should have_selector('title',
      						:text => '首页 | 爱知学堂')
    end
    it "shoud have the h1 '爱知学堂'" do
      visit '/'
      page.should have_selector('h1',
      						:text => '爱知学堂')
    end
  end

  describe "HelpPage (GET /help)" do
  	it "should have the title '帮助 | 爱知学堂'" do
  	  visit '/help'
  	  page.should have_selector('title',
      						:text => '帮助 | 爱知学堂')
  	end
  	it "should have the h1 '帮助'" do
  	  visit '/help'
  	  page.should have_selector('h1',
      						:text => '帮助')
  	end
  end


  describe "AboutPage (GET /about)" do

  	it "should have the title '关于我们 | 爱知学堂'" do
  	  visit '/about'
  	  page.should have_selector('title',
      						:text => '关于我们 | 爱知学堂')
  	end

  	it "should have the h1 '关于我们'" do
  	  visit '/about'
  	  page.should have_selector('h1',
  	  						:text => '关于我们')
  	end

  end

end
