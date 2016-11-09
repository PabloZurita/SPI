class CreateAtravesdes < ActiveRecord::Migration[5.0]
  def change
    create_table :atravesdes do |t|
      t.references :pago, foreign_key: true
      t.references :mdp, foreign_key: true

      t.timestamps
    end
  end
end
