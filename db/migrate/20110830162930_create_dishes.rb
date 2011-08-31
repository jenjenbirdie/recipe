class CreateDishes < ActiveRecord::Migration
  def self.up
    create_table :dishes do |t|
      t.string :title
      t.string :category1
      t.string :category2
      t.string :category3
      t.integer :duration
      t.text :description
      t.string :image_url
      t.boolean :kidsMenu
      t.boolean :glutenFree
      t.text :ingredients
      t.text :direction

      t.timestamps
    end
  end

  def self.down
    drop_table :dishes
  end
end
