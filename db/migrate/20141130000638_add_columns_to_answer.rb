class AddColumnsToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :value, :string
    add_column :answers, :question_id, :integer
  end
end
