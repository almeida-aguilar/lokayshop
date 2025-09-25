# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_09_24_165755) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "categoria_productos", id: :serial, force: :cascade do |t|
    t.string "nombre", limit: 100, null: false
    t.string "emoji_icono", limit: 10, default: "📦", null: false
    t.bigint "categoria_tienda_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categoria_tienda_id"], name: "index_categoria_productos_on_categoria_tienda_id"
  end

  create_table "categoria_tiendas", id: :serial, force: :cascade do |t|
    t.string "nombre", limit: 100, null: false
    t.string "emoji_icono", limit: 10, default: "🛍️", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.bigint "comprador_id", null: false
    t.bigint "producto_id", null: false
    t.integer "estado_pedido", default: 0, null: false
    t.text "mensaje_inicial", default: "¡Hola! Estoy interesado en este producto, ¿sigue disponible?", null: false
    t.datetime "fecha_pedido", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "fecha_actualizacion", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comprador_id"], name: "index_pedidos_on_comprador_id"
    t.index ["producto_id"], name: "index_pedidos_on_producto_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre", limit: 255, null: false
    t.text "descripcion", null: false
    t.decimal "precio", precision: 10, scale: 2, null: false
    t.string "imagen_url", limit: 500, null: false
    t.integer "stock", default: 0, null: false
    t.bigint "tienda_id", null: false
    t.bigint "categoria_id", null: false
    t.datetime "fecha_publicacion", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categoria_id"], name: "index_productos_on_categoria_id"
    t.index ["tienda_id"], name: "index_productos_on_tienda_id"
  end

  create_table "resenas", primary_key: "pedido_id", force: :cascade do |t|
    t.integer "calificacion", null: false
    t.text "comentario"
    t.datetime "fecha_resena", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pedido_id"], name: "index_resenas_on_pedido_id"
    t.check_constraint "calificacion >= 1 AND calificacion <= 5", name: "calificacion_check"
  end

  create_table "tiendas", force: :cascade do |t|
    t.string "nombre", limit: 255, null: false
    t.text "descripcion", null: false
    t.string "emoji_logo", limit: 10, default: "🏪", null: false
    t.bigint "propetario_id", null: false
    t.bigint "categoria_principal_id", null: false
    t.datetime "fecha_creacion", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categoria_principal_id"], name: "index_tiendas_on_categoria_principal_id"
    t.index ["propetario_id"], name: "index_tiendas_on_propetario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre", limit: 100, null: false
    t.string "apellido", limit: 100, null: false
    t.string "correo", limit: 255, null: false
    t.string "telefono", limit: 20, null: false
    t.string "emoji_perfil", limit: 10, default: "👤", null: false
    t.string "contrasena", limit: 50, null: false
    t.datetime "fecha_registro", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["correo"], name: "index_usuarios_on_correo", unique: true
  end

  add_foreign_key "categoria_productos", "categoria_tiendas"
  add_foreign_key "pedidos", "productos"
  add_foreign_key "pedidos", "usuarios", column: "comprador_id"
  add_foreign_key "productos", "categoria_productos", column: "categoria_id"
  add_foreign_key "productos", "tiendas"
  add_foreign_key "resenas", "pedidos"
  add_foreign_key "tiendas", "categoria_tiendas", column: "categoria_principal_id"
  add_foreign_key "tiendas", "usuarios", column: "propetario_id"
end
