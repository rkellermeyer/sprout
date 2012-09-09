class AddCategoryIdToChat < ActiveRecord::Migration
  def change
    add_column :chats, :category_id, :integer
  end
end
