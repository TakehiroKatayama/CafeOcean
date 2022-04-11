class Capacity < ApplicationRecord
  has_many :reservations

  validates :remaining_seat, numericality: { greater_than_or_equal_to: 0 }

  enum status: {
    vacancy: 0,
    full: 1,
    closed: 2
  }

  def full?
    remaining_seat.zero? ? update!(status: 'full') : update!(status: 'vacancy')
  end
end
