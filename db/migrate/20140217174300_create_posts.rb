class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user
      t.references :category
      t.string :name
      t.string :description
      t.integer :price
      t.string :location
    end
  end
end
