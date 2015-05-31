class CreateTakens < ActiveRecord::Migration
  def change
    create_table :takens do |t|
      t.string :student_id_taken
      t.integer :course_id_taken
      t.string :grade_taken
      t.string :instructor_taken

      t.timestamps
    end
  end
end
