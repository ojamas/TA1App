class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.column :language, :string, :primary_key => true

      t.timestamps
    end
  end
end
