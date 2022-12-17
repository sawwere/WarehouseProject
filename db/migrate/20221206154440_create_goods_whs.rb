class CreateGoodsWhs < ActiveRecord::Migration[7.0]
  def change
    create_table :goods_whs do |t|
      t.belongs_to :good, null: false, foreign_key: true
      t.belongs_to :warehouse, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
