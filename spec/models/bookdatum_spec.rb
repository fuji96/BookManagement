require 'spec_helper'

describe Bookdatum do
  fixtures :bookdata
  
  describe "DBにデータが存在する場合" do
    it "DB内のデータを全件取得できる" do
      bookdatum = Bookdatum.find(:all)
      bookdatum.length.should == 2
    end
  end

  describe "新たにデータを追加した場合" do
    before do
      bookdatum = Bookdatum.new
      bookdatum.title = "gitbook"
      bookdatum.authors = "ito"
      bookdatum.price = "3000"
      bookdatum.published = "2013-09-15"
      bookdatum.save
    end

    it "DBにデータが保存される" do
      bookdatum = Bookdatum.find(:all)
      bookdatum.length.should == 3
    end

    it "追加したデータを取得できる" do
      bookdatum = Bookdatum.find(:all)
      bookdatum[2].title.should == "gitbook"
    end
  
  end
end
