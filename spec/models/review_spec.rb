require 'spec_helper'

describe Review do
  fixtures :reviews
  
  describe "DBにデータが存在する場合" do
    it "DB内のデータを全件取得できる" do
      review = Review.find(:all)
      review.length.should == 3
    end
  end

  describe "新たにデータを追加した場合" do
    before do
      review = Review.new
      review.body = "verygood"
      review.user_id = "2"
      review.bookdatum_id = "2"
      review.save
    end

    it "DBにデータが保存される" do
      review = Review.find(:all)
      review.length.should == 4
    end

    it "追加したデータを取得できる" do
      review = Review.find(:all)
      review[3].body.should == "verygood"
    end
  
  end
end
