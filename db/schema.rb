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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_170_103_125_424) do
  create_table 'addresses', force: :cascade do |t|
    t.integer  'user_id'
    t.string   'street'
    t.string   'city'
    t.string   'pin_code'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'categories', force: :cascade do |t|
    t.string   'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'line_items', force: :cascade do |t|
    t.integer  'product_id'
    t.integer  'user_id'
    t.integer  'quantity'
    t.float    'price'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.float    'total'
  end

  create_table 'order_line_items', force: :cascade do |t|
    t.integer  'order_id'
    t.integer  'product_id'
    t.float    'price'
    t.integer  'quantity'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'orders', force: :cascade do |t|
    t.datetime 'order_date'
    t.string   'order_no'
    t.integer  'user_id'
    t.float    'total'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'permissions', force: :cascade do |t|
    t.integer  'user_id'
    t.integer  'role_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'products', force: :cascade do |t|
    t.string   'name'
    t.float    'price'
    t.integer  'category_id'
    t.datetime 'created_at',      null: false
    t.datetime 'updated_at',      null: false
    t.boolean  'is_featured'
    t.integer  'sub_category_id'
  end

  create_table 'recent_views', force: :cascade do |t|
    t.integer  'user_id'
    t.integer  'product_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'roles', force: :cascade do |t|
    t.string   'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'sub_categories', force: :cascade do |t|
    t.string   'name'
    t.integer  'category_id'
    t.datetime 'created_at',  null: false
    t.datetime 'updated_at',  null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string   'email',                  default: '', null: false
    t.string   'encrypted_password',     default: '', null: false
    t.string   'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer  'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string   'current_sign_in_ip'
    t.string   'last_sign_in_ip'
    t.datetime 'created_at',                          null: false
    t.datetime 'updated_at',                          null: false
    t.string   'username'
  end

  add_index 'users', ['email'], name: 'index_users_on_email', unique: true
  add_index 'users', ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
end
