class CreateMenuItems < ActiveRecord::Migration[8.1]
  def change
    create_table :menu_items do |t|
      t.string :title_en
      t.string :title_fr
      t.text :description_en
      t.text :description_fr
      t.decimal :price_small
      t.decimal :price_large
      t.string :category
      t.integer :position
      t.string :image

      t.timestamps
    end
  end
end
