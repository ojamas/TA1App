class CreatePastTa < ActiveRecord::Migration
  def change
    create_table :past_ta do |t|
      t.string :student_id_pta
      t.integer :course_id_pta

      t.timestamps
    end
  end
end
