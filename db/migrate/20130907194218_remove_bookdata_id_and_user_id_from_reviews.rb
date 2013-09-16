class RemoveBookdataIdAndUserIdFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :bookdata_id, :integer
    remove_column :reviews, :user_id, :integer
  end
end
