class CreateLineas < ActiveRecord::Migration[5.0]
  def change
    create_table :lineas do |t|
      t.integer :id_linea
      t.string :numero_cliente

      t.timestamps
    end
    add_index :lineas, :id_linea, unique: true
  end
end
