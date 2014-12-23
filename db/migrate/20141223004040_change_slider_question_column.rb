class ChangeSliderQuestionColumn < ActiveRecord::Migration
  def change
    rename_column :slider_questions, :book_id, :page_id
  end
end
