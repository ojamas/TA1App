class Proficiency < ActiveRecord::Base
  has_many :language_proficiency#, :foreign_key => "proficiency_level", :primary_key => "proficiency_level"
end
