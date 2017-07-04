class Event < ApplicationRecord
  belongs_to :user

  validates :name, precsence: true
  validates :description, presence: true length: { maximum: 500 }

end
