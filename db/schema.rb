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

ActiveRecord::Schema.define(:version => 20100228185419) do

  create_table "categorias", :force => true do |t|
    t.string   "cat_nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorias_tipos", :id => false, :force => true do |t|
    t.integer "categoria_id", :null => false
    t.integer "tipo_id",      :null => false
  end

  create_table "operaciones", :force => true do |t|
    t.string   "op_nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productos", :force => true do |t|
    t.integer  "categoria_id"
    t.integer  "operacion_id"
    t.string   "modelo"
    t.text     "detalle"
    t.integer  "precio"
    t.string   "imagen"
    t.integer  "habilitado"
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tb_plantillas", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipos", :force => true do |t|
    t.string   "ti_nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
