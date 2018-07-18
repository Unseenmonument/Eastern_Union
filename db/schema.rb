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

ActiveRecord::Schema.define(version: 20180718025913) do

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.boolean "require_id"
    t.boolean "require_testq"
    t.boolean "communist_q"
    t.boolean "req_twoid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "mim_tier1_cost"
    t.decimal "mim_tier1_limit"
    t.decimal "mim_tier2_cost"
    t.decimal "mim_tier2_limit"
    t.decimal "mim_tier3_cost"
    t.decimal "mim_tier3_limit"
    t.decimal "mim_tier4_cost"
    t.decimal "mim_tier4_limit"
    t.decimal "nextday_tier1_cost"
    t.decimal "nextday_tier1_limit"
    t.decimal "nextday_tier2_cost"
    t.decimal "nextday_tier2_limit"
    t.decimal "nextday_tier3_cost"
    t.decimal "nextday_tier3_limit"
    t.decimal "nextday_tier4_cost"
    t.decimal "nextday_tier4_limit"
    t.decimal "exchange_rate"
  end

  create_table "r_moneys", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "s_moneys", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "senders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "f_name"
    t.string "m_name"
    t.string "l_name"
    t.string "pat_name"
    t.string "mat_name"
    t.string "address"
    t.string "address_zip"
    t.string "address_state"
    t.string "phone_number"
    t.string "email"
    t.text "recipients"
    t.string "id_type"
    t.string "lic_number"
    t.string "pass_number"
    t.string "gov_number"
    t.date "id_dob"
    t.string "lic_state"
    t.string "pass_nation"
    t.string "gov_nation"
    t.string "send_amount"
    t.string "final_amount"
    t.string "payout_nation"
    t.string "payout_state"
    t.string "reciever_f_name"
    t.string "reciever_m_name"
    t.string "reciever_l_name"
    t.string "reciever_pat_name"
    t.string "reciever_mat_name"
    t.string "test_question"
    t.string "test_answer"
    t.date "send_date"
    t.date "payout_date"
    t.string "reciever_country"
    t.string "customer_number"
    t.string "mtcn"
    t.boolean "create_account"
  end

end
