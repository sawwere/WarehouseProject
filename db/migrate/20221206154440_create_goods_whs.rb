class CreateGoodsWhs < ActiveRecord::Migration[7.0]
  def change
    create_table :goods_whs do |t|
      t.references :wh, null: false, foreign_key: true
      t.references :goods, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
