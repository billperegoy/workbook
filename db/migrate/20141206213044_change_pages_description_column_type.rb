class ChangePagesDescriptionColumnType < ActiveRecord::Migration
  def change
    change_column :pages, :description, :text
  end
end
