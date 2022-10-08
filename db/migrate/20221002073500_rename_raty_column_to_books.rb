class RenameRatyColumnToBooks < ActiveRecord::Migration[6.1]
  def change
    rename_column :books, :raty, :star
  end
end
