class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.column :instructor, :string, :primary_key => true

      t.timestamps
    end
  end
end
