class ChangePagesDescriptionLimit < ActiveRecord::Migration
  def change
    change_column :pages, :description, :text, :limit => nil
  end
end
