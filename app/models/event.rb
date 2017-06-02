class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :photos
  has_many :registrations, dependent: :destroy
  has_many :guests, through: :registrations, source: :user

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

  def available?(checkin, checkout)
    registrations.each do |registration|
      if (registration.starts_at <= checkout) && (registration.ends_at >= checkin)
        return false
      end
    end
    true
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

  def self.alphabetical
    order(listing_name: :asc)
  end

  def self.starts_before_ends_after(arrival, departure)
    where('starts_at < ? AND ends_at > ?', arrival, departure)
  end

  def self.starts_during(arrival)
    where('starts_at > ? AND starts_at < ?', arrival, departure)
  end

  def self.ends_during(arrival, departure)
    where('ends_at > ? AND ends_at < ?', arrival, departure)
  end

  def event

  end

  def order_by_starts_at
    Event.order(:created_at)
  end

  def earliest_registration_for_event(eventname)
    Registration.order(starts_at: :asc)#.map{ |reg| reg.starts_at }
  end

  def total_registrations
    Registration.count
  end

  def total_amount_registrations_by_active
    Registration.count
  end

  def amount_of_people_attending_event
    Event.group
  end

  def event_names_and_amount_of_people_attending
    Event.group(:name).map |eventname| do
      eventname.each |i|  }.count
    end
  end

  def event_names_and_amount_of_people_attending2
    Event.group(:name).map |eventname| do

    end

  end
