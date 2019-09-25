class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :categoria
      t.string :nombre
      t.text :descripción
      t.float :precio

      t.timestamps
    end
  end
end
