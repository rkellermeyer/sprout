class CreateCategoriesUsersJoinTable < ActiveRecord::Migration
  def up
    create_table :categories_users do |t|
      t.integer :category_id
      t.integer :user_id
    end
  end

  def down
    drop_table :categories_users
  end
end
