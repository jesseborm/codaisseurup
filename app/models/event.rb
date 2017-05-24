class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories


  validates :name, :location, :price, :capacity, presence: true
  validates :description, length: {maximum: 500}, presence: true
  validates :starts_at, presence: true
  # # Does this one checks to see if last bit is true?
  # , if: :ends_at > :starts_at
  validates :ends_at, presence: true

  # Should give every detail for every event unless
  # Not yet tested if this works. maybe #FIXME
  def all_events_details
    Event.all.each do |event|
      event.each { |k, v| puts "#{k} is #{v}" } unless v.blank?
    end

  end

  def bargain?
    price < 30
  end

  def self.order_by_price
    order(:price)
  end

  def all_events
    puts Event.all
  end


end
