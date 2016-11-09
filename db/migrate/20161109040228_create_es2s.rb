class CreateEs2s < ActiveRecord::Migration[5.0]
  def change
    create_table :es2s do |t|
      t.references :contrato, foreign_key: true
      t.references :linea, foreign_key: true

      t.timestamps
    end
  end
end
