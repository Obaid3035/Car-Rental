class Booking < ApplicationRecord
  belongs_to :car, optional: true
  belongs_to :manufacturers, optional: true
  before_create :set_rent_start_date_to_now

  def set_rent_start_date_to_now
    self.rent_start_date = Time.now
  end

  # def rent
  # @end_date = rent_start_date + duration.days
  # while (rent_start_date < @end_date)
  #   self.balance += self.daily_rate
  #   self.rent_start_date += 1.day
  # end
  #
  # end


end
