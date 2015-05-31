class Taken < ActiveRecord::Base
  belongs_to :student, :foreign_key => "student_id_taken", :primary_key => "student_id"
  belongs_to :course, :foreign_key => "course_id_taken", :primary_key => "course_id"
  belongs_to :grade, :foreign_key => "grade_taken", :primary_key => "grade"
  belongs_to :instructor, :foreign_key => "instructor_taken", :primary_key => "instructor"
end
