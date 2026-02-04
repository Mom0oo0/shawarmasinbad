class BusinessHour < ApplicationRecord
  attribute :is_closed, :boolean, default: false
end
