class CreateSeparas < ActiveRecord::Migration[5.0]
  def change
    create_table :separas do |t|
      t.references :segmento, foreign_key: true
      t.references :linea, foreign_key: true

      t.timestamps
    end
  end
end
