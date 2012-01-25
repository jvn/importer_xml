# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120125122330) do

  create_table "leads", :force => true do |t|
    t.string   "Firmanavn"
    t.string   "Adresse"
    t.string   "Postnr"
    t.integer  "Telefon"
    t.string   "Primar_branche"
    t.string   "Email"
    t.string   "Tilladelse_til"
    t.integer  "Antal_tilladelser"
    t.string   "DTL_Regioner"
    t.integer  "Antal_biler"
    t.integer  "Antal_chaufforer"
    t.string   "Kunde"
    t.string   "Konkurrent"
    t.string   "Dorcanvas"
    t.string   "Telefoncanvas_EGO"
    t.string   "Telefoncanvas_outsourcet"
    t.string   "M1_Kontakt_etableret"
    t.string   "M2_Mode_booket"
    t.string   "M3_Mode_gennemfort"
    t.string   "M4_Aftale_indgaet"
    t.string   "M5_Deltager_booket"
    t.string   "Milepalsstatus"
    t.string   "Naste_kontakt"
    t.string   "Kommentarer_og_noter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
