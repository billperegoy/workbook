class Page < ActiveRecord::Base
  belongs_to :book
  has_many :questions
  has_many :slider_questions
end
