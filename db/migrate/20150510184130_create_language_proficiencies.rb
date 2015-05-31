class CreateLanguageProficiencies < ActiveRecord::Migration
  def change
    create_table :language_proficiencies do |t|
      t.string :student_id_lp
      t.string :language_lp
      t.string :proficiency_level_lp
      
      t.timestamps
    end
  end
end
