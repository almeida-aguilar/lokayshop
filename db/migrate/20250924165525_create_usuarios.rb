class CreateUsuarios < ActiveRecord::Migration[8.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre, null: false, limit: 100
      t.string :apellido, null: false, limit: 100
      t.string :correo, null: false, limit: 255
      t.string :telefono, null: false, limit: 20
      t.string :emoji_perfil, null: false, limit: 10, default: '👤'
      t.string :contrasena, null: false, limit: 50
      t.datetime :fecha_registro, null: false, default: -> { 'CURRENT_TIMESTAMP' }

      t.timestamps
    end

    add_index :usuarios, :correo, unique: true
  end
end
