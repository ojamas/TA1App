class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.column :proficiency_level, :string, :primary_key => true
      
      t.timestamps
    end
  end
end
