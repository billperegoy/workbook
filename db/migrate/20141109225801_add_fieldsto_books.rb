class AddFieldstoBooks < ActiveRecord::Migration
  def change
    add_column :books, :title, :string
    add_column :books, :thumbnail, :string
    add_column :books, :description, :text
    add_column :books, :price, :float
  end
end
