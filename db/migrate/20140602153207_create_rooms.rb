class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :desc
      t.string :identify
      t.string :report_meta

      t.timestamps
    end
  end
end
