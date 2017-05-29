class Registration < ApplicationRecord
  belongs_to :user
  belongs_to :event

  # This is probably better placed in the migration file with a limit or smth on guest_count
  # changed this in the input form
  # validates :guest_count, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 3 }

  before_save :set_total_price, :set_price

  def set_price
    price = self.event.price
  end

  def set_total_price
    self.price = event.price
    self.total_price = price * guest_count
    # puts "*" * 50
    # puts total_price
    # puts "*" * 50
  end
end
