class AddTypeOperationToOperation < ActiveRecord::Migration[7.0]
  def change
    add_belongs_to :operations, :type_operation, null: false, foreign_key: true
    remove_column :operations, :typeop, type: :integer
  end
end
