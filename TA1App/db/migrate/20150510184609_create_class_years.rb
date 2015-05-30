class CreateClassYears < ActiveRecord::Migration
  def change
    create_table :class_years do |t|
      t.column :class_year, :integer, :primary_key => true
      
      t.timestamps
    end
  end
end
