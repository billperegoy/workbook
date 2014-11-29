class DeletePagesColumnFromPages < ActiveRecord::Migration
  def change
    remove_column :pages, :pages
  end
end
