class CreateBusinessHours < ActiveRecord::Migration[8.1]
  def change
    create_table :business_hours do |t|
      t.string :day
      t.string :opens_at
      t.string :closes_at
      t.integer :position

      t.timestamps
    end
  end
end
