class Student < ActiveRecord::Base
  belongs_to :class_year, :foreign_key => "class_year_st", :primary_key => "class_year"
  belongs_to :hours, :foreign_key => "hours_st", :primary_key => "hours"
  belongs_to :qr, :foreign_key => "qr_st", :primary_key => "qr"
  has_many :language_proficiency
  has_many :taken
  has_many :willing_to_ta
  has_many :willing_to_grade
  has_many :willing_to_ta_language
  has_many :past_ta
end
