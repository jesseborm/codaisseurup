class Event < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :description, length: {max: 500}, presence: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true, date: { greather_than: :starts_at }


  # Should give every detail for every event unless
  # Not yet tested if this works. maybe #FIXME
  def all_events_details
    Event.all.each do |event|
      event.each { |k, v| puts "#{k} is #{v}" } unless v.blank?
    end
  end

  def all_events
    puts Event.all
  end


end
