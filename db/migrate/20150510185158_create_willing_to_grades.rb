class CreateWillingToGrades < ActiveRecord::Migration
  def change
    create_table :willing_to_grades do |t|
      t.string :student_id_wtg
      t.integer :course_id_wtg
      t.timestamps
    end
  end
end
