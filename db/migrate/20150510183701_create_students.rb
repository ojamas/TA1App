class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.column :student_id, :string, :primary_key => true
      t.string :student_name
      t.string :major
      t.string :minor
      t.text :other_information

      t.integer :class_year_st
      t.integer :hours_st
      t.string :qr_st

      t.timestamps
    end
  end
end
