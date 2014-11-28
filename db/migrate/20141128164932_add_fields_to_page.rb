class AddFieldsToPage < ActiveRecord::Migration
  def change
    add_column :pages, :pages, :string
    add_column :pages, :description, :string
    add_column :pages, :book_id, :integer
  end
end
