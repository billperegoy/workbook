class DropOwnedBooksAgainTable < ActiveRecord::Migration
  def change
    drop_table :owned_books do |t|
    end
  end
end
