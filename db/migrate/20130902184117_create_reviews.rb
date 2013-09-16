class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :bookdata_id
      t.integer :user_id
      t.string :body

      t.timestamps
    end
  end
end
