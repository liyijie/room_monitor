class CreateAreaRelations < ActiveRecord::Migration
  def change
    create_table :area_relations do |t|
      t.belongs_to :user
      t.belongs_to :area

      t.timestamps
    end
  end
end
