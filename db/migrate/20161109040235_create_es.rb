class CreateEs < ActiveRecord::Migration[5.0]
  def change
    create_table :es do |t|
      t.references :fijomovil, foreign_key: true
      t.references :linea, foreign_key: true

      t.timestamps
    end
  end
end
