class CreateAgents < ActiveRecord::Migration[7.0]
  def change
    create_table :agents do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :phone
      t.string :town

      t.timestamps
    end
  end
end
