class WillingToTaLanguage < ActiveRecord::Base
  belongs_to :student, :foreign_key => "student_id_wttl", :primary_key => "student_id"
  belongs_to :language, :foreign_key => "language_wttl", :primary_key => "language"
end
