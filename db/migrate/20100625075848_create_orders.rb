class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.string :name
      t.string :town
      t.integer :zip
      t.string :street

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
