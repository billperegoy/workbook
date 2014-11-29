class Page < ActiveRecord::Base
  belongs_to :book
  has_many :questions
end
