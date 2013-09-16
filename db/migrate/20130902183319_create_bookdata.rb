class CreateBookdata < ActiveRecord::Migration
  def change
    create_table :bookdata do |t|
      t.string :title
      t.string :authors
      t.integer :price
      t.date :published

      t.timestamps
    end
  end
end
