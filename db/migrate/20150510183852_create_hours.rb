class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.column :hours, :integer, :primary_key => true

      t.timestamps
    end
  end
end
