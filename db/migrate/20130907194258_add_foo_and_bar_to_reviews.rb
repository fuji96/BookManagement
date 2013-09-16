class AddFooAndBarToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :bookdata, index: true
    add_reference :reviews, :user, index: true
  end
end
