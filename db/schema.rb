# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161106083330) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.integer  "id_cliente"
    t.string   "rut_cliente"
    t.string   "nombre_cliente"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["id_cliente"], name: "index_clientes_on_id_cliente", unique: true, using: :btree
  end

  create_table "contratos", force: :cascade do |t|
    t.integer  "id_contrato"
    t.string   "tipo_contrato"
    t.integer  "linea_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["id_contrato"], name: "index_contratos_on_id_contrato", unique: true, using: :btree
    t.index ["linea_id"], name: "index_contratos_on_linea_id", using: :btree
  end

  create_table "encuesta", force: :cascade do |t|
    t.integer  "id_encuesta"
    t.date     "fecha_creacion_encuesta"
    t.text     "motivo_encuesta"
    t.integer  "resuelto_encuesta"
    t.integer  "linea_id"
    t.integer  "preguntum_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["id_encuesta"], name: "index_encuesta_on_id_encuesta", unique: true, using: :btree
    t.index ["linea_id"], name: "index_encuesta_on_linea_id", using: :btree
    t.index ["preguntum_id"], name: "index_encuesta_on_preguntum_id", using: :btree
  end

  create_table "fijomovils", force: :cascade do |t|
    t.integer  "id_fijomovil"
    t.string   "tipo_fijomovil"
    t.integer  "linea_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["id_fijomovil"], name: "index_fijomovils_on_id_fijomovil", unique: true, using: :btree
    t.index ["linea_id"], name: "index_fijomovils_on_linea_id", using: :btree
  end

  create_table "lineas", force: :cascade do |t|
    t.integer  "id_linea"
    t.integer  "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_lineas_on_cliente_id", using: :btree
    t.index ["id_linea"], name: "index_lineas_on_id_linea", unique: true, using: :btree
  end

  create_table "mdps", force: :cascade do |t|
    t.integer  "id_mdp"
    t.string   "nombre_mdp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_mdp"], name: "index_mdps_on_id_mdp", unique: true, using: :btree
  end

  create_table "pagos", force: :cascade do |t|
    t.integer  "id_pago"
    t.text     "canal"
    t.text     "orden_compra"
    t.date     "fecha_transaccion"
    t.time     "hora"
    t.integer  "cod_retorno"
    t.integer  "cod_autorizacion"
    t.integer  "monto"
    t.datetime "fecha_pago"
    t.date     "fecha_ident_transaccion"
    t.integer  "tel_movil"
    t.integer  "tel_fijo"
    t.integer  "cod_cliente"
    t.integer  "documento"
    t.integer  "linea_id"
    t.integer  "mdp_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["id_pago"], name: "index_pagos_on_id_pago", unique: true, using: :btree
    t.index ["linea_id"], name: "index_pagos_on_linea_id", using: :btree
    t.index ["mdp_id"], name: "index_pagos_on_mdp_id", using: :btree
  end

  create_table "pregunta", force: :cascade do |t|
    t.integer  "id_pregunta"
    t.string   "tipo_pregunta"
    t.integer  "valor_pregunta"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["id_pregunta"], name: "index_pregunta_on_id_pregunta", unique: true, using: :btree
  end

  create_table "segmentos", force: :cascade do |t|
    t.integer  "id_segmento"
    t.string   "tipo_segmento"
    t.integer  "linea_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["id_segmento"], name: "index_segmentos_on_id_segmento", unique: true, using: :btree
    t.index ["linea_id"], name: "index_segmentos_on_linea_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "contratos", "lineas"
  add_foreign_key "encuesta", "lineas"
  add_foreign_key "encuesta", "pregunta"
  add_foreign_key "fijomovils", "lineas"
  add_foreign_key "lineas", "clientes"
  add_foreign_key "pagos", "lineas"
  add_foreign_key "pagos", "mdps"
  add_foreign_key "segmentos", "lineas"
end
