class WillingToGrade < ActiveRecord::Base
  belongs_to :student, :foreign_key => "student_id_wtg", :primary_key => "student_id"
  belongs_to :course, :foreign_key => "course_id_wtg", :primary_key => "course_id"
end
