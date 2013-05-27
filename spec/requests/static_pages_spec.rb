require 'spec_helper'

describe "StaticPages" do
  describe "HomePage (GET /)" do
    it "shoud have the content '首页 | 爱知学堂'" do
      visit '/'
      page.should have_content('首页 | 爱知学堂')
    end
  end
end
