ActiveRecord::Schema.define(version: 20170907232108) do

  enable_extension "plpgsql"

  create_table "gens", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
