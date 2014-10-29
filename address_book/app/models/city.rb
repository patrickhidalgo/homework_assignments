class City < ActiveRecord::Base
  validates :name, :population, :elevation, :state, presence: true
  validates :elevation,
    numericality: {
      greater_than_or_equal_to: 3315,
      if: ->(city) { city.state == 'CO' },
      message: 'is too low, lowest point in CO is 3315 feet.'
    }
  validates :population,
    numericality: {
      greater_than: 0,
      message: 'is that of a ghost town.'
    }
end
