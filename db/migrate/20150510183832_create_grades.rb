class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.column :grade, :string, :primary_key => true

      t.timestamps
    end
  end
end
