class User < ApplicationRecord
  belongs_to :location, optional: true
  has_many :chores
end
