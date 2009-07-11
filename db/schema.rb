# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090706145029) do

  create_table "almacenes", :force => true do |t|
    t.string   "nombre",     :limit => 100
    t.string   "direccion"
    t.string   "codigo",     :limit => 20
    t.string   "telefono",   :limit => 20
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventario_detalles", :force => true do |t|
    t.integer  "inventario_id"
    t.integer  "item_id"
    t.decimal  "cantidad"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "precio_unitario", :precision => 10, :scale => 2
  end

  create_table "inventario_items", :force => true do |t|
    t.integer  "item_id"
    t.decimal  "cantidad"
    t.boolean  "activo"
    t.decimal  "valor_inventario"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventarios", :force => true do |t|
    t.datetime "fecha"
    t.string   "descripcion"
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "total",       :precision => 12, :scale => 2
    t.integer  "almacen_id"
  end

  create_table "items", :force => true do |t|
    t.integer  "partida_id"
    t.string   "codigo"
    t.string   "nombre"
    t.boolean  "entero"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "unidad_medida_id"
    t.string   "foto_file_name"
  end

  create_table "partidas", :force => true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solicitudes", :force => true do |t|
    t.integer  "usuario_id"
    t.datetime "fecha"
    t.string   "estado"
    t.datetime "fecha_aprobacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solicitudes_detalles", :force => true do |t|
    t.integer  "solicitud_id"
    t.integer  "item_id"
    t.decimal  "cantidad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stocks", :force => true do |t|
    t.integer  "almacen_id"
    t.integer  "item_id"
    t.decimal  "cantidad"
    t.decimal  "valor_inventario"
    t.boolean  "activo"
    t.string   "estado"
    t.string   "accion"
    t.datetime "fecha_vencimiento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transferencia_detalles", :force => true do |t|
    t.integer  "item_id"
    t.integer  "transferencia_id"
    t.decimal  "cantidad",         :precision => 14, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transferencias", :force => true do |t|
    t.integer  "almacen_origen_id"
    t.integer  "almacen_destino_id"
    t.datetime "fecha"
    t.decimal  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unidad_medidas", :force => true do |t|
    t.string   "nombre"
    t.string   "abreviacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unidades", :force => true do |t|
    t.string   "nombre"
    t.string   "iniciales"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.integer  "unidad_id"
    t.string   "ci"
    t.string   "nombre"
    t.string   "paterno"
    t.string   "materno"
    t.string   "cargo"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
