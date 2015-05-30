class Language < ActiveRecord::Base
  has_many :willing_to_ta_language
  has_many :language_proficiency#, :foreign_key => "language", :primary_key => "language"
  has_many :taken
end
