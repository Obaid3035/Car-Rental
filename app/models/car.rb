class Car < ApplicationRecord
  belongs_to :brand, optional: true
end
