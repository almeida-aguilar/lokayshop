class CreatePedidos < ActiveRecord::Migration[8.0]
  def change
    create_table :pedidos do |t|
      t.references :comprador, null: false, foreign_key: { to_table: :usuarios }
      t.references :producto, null: false, foreign_key: true
      t.integer :estado_pedido, null: false, default: 0
      t.text :mensaje_inicial, null: false, default: '¡Hola! Estoy interesado en este producto, ¿sigue disponible?'
      t.datetime :fecha_pedido, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.datetime :fecha_actualizacion, null: false, default: -> { 'CURRENT_TIMESTAMP' }

      t.timestamps
    end
  end
end
