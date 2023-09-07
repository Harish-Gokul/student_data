class Post < ApplicationRecord
  belongs_to :student
  validates :title,presence: true, length: {minimum:5,maximum: 50}
  validates :description,presence: true, length: {minimum:5,maximum: 2500}
end