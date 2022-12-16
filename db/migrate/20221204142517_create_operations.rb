class CreateOperations < ActiveRecord::Migration[7.0]
  def change
    create_table :operations do |t|
      t.integer :typeop
      t.integer :quantity
      t.float :price
      t.text :op_date
      t.belongs_to :agent, null: false, foreign_key: true
      t.belongs_to :good, null: false, foreign_key: true
      t.belongs_to :warehouse, null: false, foreign_key: true

      t.timestamps
    end
  end
end
