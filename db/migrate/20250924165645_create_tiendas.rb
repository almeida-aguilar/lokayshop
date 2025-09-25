class CreateTiendas < ActiveRecord::Migration[8.0]
  def change
    create_table :tiendas do |t|
      t.string :nombre, null: false, limit: 255
      t.text :descripcion, null: false
      t.string :emoji_logo, null: false, limit: 10, default: '🏪'
      t.references :propetario, null: false, foreign_key: { to_table: :usuarios }
      t.references :categoria_principal, null: false, foreign_key: { to_table: :categoria_tiendas }
      t.datetime :fecha_creacion, null: false, default: -> { 'CURRENT_TIMESTAMP' }

      t.timestamps
    end
  end
end
