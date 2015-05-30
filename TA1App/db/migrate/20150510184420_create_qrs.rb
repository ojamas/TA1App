class CreateQrs < ActiveRecord::Migration
  def change
    create_table :qrs do |t|
      t.column :qr, :string, :primary_key => true

      t.timestamps
    end
  end
end
