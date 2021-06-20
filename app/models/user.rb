class User < ApplicationRecord
  validates_presence_of :name
  has_one :clock, dependent: :destroy
  has_many :sleep_records, dependent: :destroy
end
