class CreateContesta < ActiveRecord::Migration[5.0]
  def change
    create_table :contesta do |t|
      t.references :linea, foreign_key: true
      t.references :encuesta, foreign_key: true

      t.timestamps
    end
  end
end
