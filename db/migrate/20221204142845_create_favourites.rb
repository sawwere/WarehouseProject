class CreateFavourites < ActiveRecord::Migration[7.0]
  def change
    create_table :favourites do |t|
      t.belongs_to :good, null: false, foreign_key: true
      t.belongs_to :agent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
