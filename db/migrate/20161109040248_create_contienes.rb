class CreateContienes < ActiveRecord::Migration[5.0]
  def change
    create_table :contienes do |t|
      t.references :encuestum, foreign_key: true
      t.references :preguntum, foreign_key: true

      t.timestamps
    end
  end
end
