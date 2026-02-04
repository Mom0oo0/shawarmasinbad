class AddIsClosedToBusinessHours < ActiveRecord::Migration[8.1]
  def change
    add_column :business_hours, :is_closed, :boolean
  end
end
