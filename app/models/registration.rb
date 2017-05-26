class Registration < ApplicationRecord
  belongs_to :user
  belongs_to :event

  # This is probably better placed in the migration file with a limit or smth on guest_count
  # changed this in the input form
  # validates :guest_count, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 3 }

  before_save :set_total_price



  def set_total_price
    price = event.price
    # puts price
    # puts guest_count
    # self.guest_count = guest_number
    self.total_price = price * guest_count
    puts "*" * 50
    puts total_price
  end
end
