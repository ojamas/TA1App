class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.column :course_id, :integer, :primary_key => true
      t.string :course_name
      
      t.timestamps
    end
  end
end
