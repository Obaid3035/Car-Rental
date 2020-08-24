class Booking < ApplicationRecord
  belongs_to :cars, optional: true
  belongs_to :manufacturers, optional: true
end
