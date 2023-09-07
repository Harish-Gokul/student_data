class Student < ApplicationRecord
  validates :first_name,presence: true, length: {minimum:5,maximum:50}
  validates :last_name,presence: true, length: {minimum:1,maximum:50}
  validates :email,presence: true, uniqueness:true , length: {minimum:15,maximum:50}
  validates :rank, presence:true
  validates :year_of_passing,presence: true
  has_many :posts
end