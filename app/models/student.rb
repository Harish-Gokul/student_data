class Student < ApplicationRecord
  validates :first_name,presence: true, length: {minimum:5,maximum:50}
  validates :last_name,presence: true, length: {minimum:1,maximum:50}
  validates :email,presence: true, length: {minimum:10,maximum:50}
  validates :year_of_passing,presence: true
end