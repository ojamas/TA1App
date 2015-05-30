class CreateWillingToTaLanguages < ActiveRecord::Migration
  def change
    create_table :willing_to_ta_languages do |t|
      t.string :student_id_wttl
      t.string :language_wttl
      
      t.timestamps
    end
  end
end
