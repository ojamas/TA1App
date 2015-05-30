class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.column :year, :integer, :primary_key => true
      
      t.timestamps
    end
  end
end
