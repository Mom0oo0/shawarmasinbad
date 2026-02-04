class AddPrecisionToMenuItemsPrices < ActiveRecord::Migration[8.1]
  def up
    change_column :menu_items, :price_small, :decimal, precision: 10, scale: 2
    change_column :menu_items, :price_large, :decimal, precision: 10, scale: 2
  end

  def down
    change_column :menu_items, :price_small, :decimal
    change_column :menu_items, :price_large, :decimal
  end
end
