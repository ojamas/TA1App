class CreateWillingToTa < ActiveRecord::Migration
  def change
    create_table :willing_to_ta do |t|
      t.string :student_id_wtta
      t.integer :course_id_wtta
      t.timestamps
    end
  end
end
