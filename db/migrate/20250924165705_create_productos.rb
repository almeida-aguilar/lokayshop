class CreateProductos < ActiveRecord::Migration[8.0]
  def change
    create_table :productos do |t|
      t.string :nombre, null: false, limit: 255
      t.text :descripcion, null: false
      t.decimal :precio, null: false, precision: 10, scale: 2
      t.string :imagen_url, null: false, limit: 500
      t.integer :stock, null: false, default: 0
      t.references :tienda, null: false, foreign_key: true
      t.references :categoria, null: false, foreign_key: { to_table: :categoria_productos }
      t.datetime :fecha_publicacion, null: false, default: -> { 'CURRENT_TIMESTAMP' }

      t.timestamps
    end
  end
end
