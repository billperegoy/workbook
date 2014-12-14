class CreateBooksUsersTable < ActiveRecord::Migration
  def change
    create_table :books_users, id: false do |t|
      t.belongs_to :book
      t.belongs_to :user
    end
  end
end
