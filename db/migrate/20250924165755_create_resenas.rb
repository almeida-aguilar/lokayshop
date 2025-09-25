class CreateResenas < ActiveRecord::Migration[8.0]
  def change
    create_table :resenas, id: false do |t|
      t.references :pedido, primary_key: true, null: false, foreign_key: true
      t.integer :calificacion, null: false
      t.text :comentario
      t.datetime :fecha_resena, null: false, default: -> { 'CURRENT_TIMESTAMP' }

      t.timestamps
    end

    # Agregar constraint para calificación
    execute <<-SQL
      ALTER TABLE resenas ADD CONSTRAINT calificacion_check CHECK (calificacion >= 1 AND calificacion <= 5)
    SQL
  end
end
