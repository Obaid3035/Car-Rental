class Car < ApplicationRecord
  belongs_to :manufacturer, optional: true
end
