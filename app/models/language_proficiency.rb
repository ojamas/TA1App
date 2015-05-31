class LanguageProficiency < ActiveRecord::Base
  belongs_to :student, :foreign_key => "student_id_lp", :primary_key => "student_id"
  belongs_to :language, :foreign_key => "language_lp", :primary_key => "language"
  belongs_to :proficiency, :foreign_key => "proficiency_level_lp", :primary_key => "proficiency_level"
end
