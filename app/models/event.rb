class Event < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :description, length: {maximum: 500}, presence: true
  validates :starts_at, presence: true
  # Does this one checks to see if last bit is true?
  validates :ends_at, presence: true, if: :ends_at > :starts_at

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
