class CreateOperations < ActiveRecord::Migration[7.0]
  def change
    create_table :operations do |t|
      t.references :id_goods, null: false, foreign_key: true
      t.references :id_ag, null: false, foreign_key: true
      t.references :id_wh, null: false, foreign_key: true
      t.integer :typeop
      t.integer :quantity
      t.float :price
      t.text :op_date

      t.timestamps
    end
  end
end
