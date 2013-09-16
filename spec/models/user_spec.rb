require 'spec_helper'

describe User do
  fixtures :users
  
  describe "DBにデータが存在する場合" do
    it "DB内のデータを全件取得できる" do
      user = User.find(:all)
      user.length.should == 2
    end
  end

  describe "新たにデータを追加した場合" do
    before do
      user = User.new
      user.username = "honda"
      user.email = "test@dummy.co.jp"
      user.save
    end

    it "DBにデータが保存される" do
      user = User.find(:all)
      user.length.should == 3
    end

    it "追加したデータを取得できる" do
      user = User.find(:all)
      user[2].username.should == "honda"
    end
  
  end



end
