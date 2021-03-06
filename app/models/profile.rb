class Profile < ApplicationRecord
  # belongs_to :user --> Not necassary so commented out
  validates :first_name, :last_name, :bio, presence: true

  def full_name
    first_name + ' ' + last_name
  end

  def self.by_initial(letter)
    where("first_name LIKE ?", "#{letter}%").order(:first_name)
  end

  def self

  end
end
