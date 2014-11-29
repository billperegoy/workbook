class OwnedBook < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  def percent_complete
    (rand(80) + 20).to_s + '%'
  end
end
