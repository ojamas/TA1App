class Course < ActiveRecord::Base
  has_many :taken
  has_many :willing_to_ta
  has_many :willing_to_grade
  has_many :past_ta
end
