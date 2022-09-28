class ChangeTrashesToTrashObjects < ActiveRecord::Migration[6.1]
  def change
    rename_table :post_comments, :book_comments
  end
end
