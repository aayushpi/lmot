ActiveRecord::Schema.define(:version => 20121007225220) do

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "oauth_token"
    t.string   "oauth_secret"
  end

end