class CreateOwnedBooks < ActiveRecord::Migration
  def change
    drop_table :owned_books
    create_table :owned_books do |t|
      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end
