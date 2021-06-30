class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :item_name
      t.references :Customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
