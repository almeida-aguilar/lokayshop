class CreateCategoriaProductos < ActiveRecord::Migration[8.0]
  def change
    create_table :categoria_productos, id: false do |t|
      t.integer :id, primary_key: true, null: false
      t.string :nombre, null: false, limit: 100
      t.string :emoji_icono, null: false, limit: 10, default: '📦'
      t.references :categoria_tienda, null: false, foreign_key: true

      t.timestamps
    end
  end
end
