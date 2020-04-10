class Chore < ApplicationRecord
  belongs_to :location
  belongs_to :user, optional: true
end
