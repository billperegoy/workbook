class CreateSliderQuestions < ActiveRecord::Migration
  def change
    create_table :slider_questions do |t|
      t.string :left_adjective
      t.string :right_adjective
      t.integer :steps
      t.integer :book_id

      t.timestamps
    end
  end
end
