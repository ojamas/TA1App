class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.column :semester, :string, :primary_key => true
      
      t.timestamps
    end
  end
end
