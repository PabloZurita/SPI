class CreateRealizas < ActiveRecord::Migration[5.0]
  def change
    create_table :realizas do |t|
      t.references :linea, foreign_key: true
      t.references :pago, foreign_key: true

      t.timestamps
    end
  end
end
