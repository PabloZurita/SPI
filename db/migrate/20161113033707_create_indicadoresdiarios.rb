class CreateIndicadoresdiarios < ActiveRecord::Migration[5.0]
  def change
    create_table :indicadoresdiarios do |t|
      t.integer :id_ind_diario
      t.float :isn
      t.float :resp_1_2
      t.float :resp_4_5
      t.date :fecha

      t.timestamps
    end
    add_index :indicadoresdiarios, :id_ind_diario, unique: true
  end
end
