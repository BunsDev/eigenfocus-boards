class AddHiddenToGroupings < ActiveRecord::Migration[8.0]
  def change
    add_column :groupings, :hidden, :boolean, null: false, default: false
  end
end
