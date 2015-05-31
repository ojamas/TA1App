class WillingToTa < ActiveRecord::Base
  belongs_to :student, :foreign_key => "student_id_wtta", :primary_key => "student_id"
  belongs_to :course, :foreign_key => "course_id_wtta", :primary_key => "course_id"
end
