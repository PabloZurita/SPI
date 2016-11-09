class CreateContrata < ActiveRecord::Migration[5.0]
  def change
    create_table :contrata do |t|
      t.references :cliente, foreign_key: true
      t.references :linea, foreign_key: true

      t.timestamps
    end
  end
end
