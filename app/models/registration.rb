class Registration < ApplicationRecord
  belongs_to :user
  belongs_to :event

  def total_price
    registration[:total_price] = registration[:price] * registration[:guest_count]
  end
end
