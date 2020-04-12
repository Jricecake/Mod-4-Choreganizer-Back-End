class User < ApplicationRecord
  belongs_to :location, optional: true
  has_many :chores

  has_secure_password

  validates :username, {presence: true, uniqueness: true}
  validates :password, {presence: true, on: :create}
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
 
end
