class FixColumnNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :nombres, :name
    rename_column :users, :apellidos, :lastname
    rename_column :users, :telefono, :phone
  end
end
