class RemoveBookdataIdFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :bookdata_id, :integer
  end
end
