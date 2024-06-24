class CreatePurchaseRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :purchase_requests do |t|
      t.datetime :date
      t.string :item_code
      t.text :description
      t.string :unit
      t.string :quantity
      t.string :asset
      t.string :vendor
      t.float :price
      t.float :total_cost

      t.timestamps
    end
  end
end
