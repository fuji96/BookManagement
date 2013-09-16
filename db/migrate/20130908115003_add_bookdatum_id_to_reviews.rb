class AddBookdatumIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :bookdatum_id, :integer
  end
end
