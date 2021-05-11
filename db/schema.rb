# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_10_165350) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "agents", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ahoy_events", force: :cascade do |t|
    t.bigint "visit_id"
    t.bigint "user_id"
    t.string "name"
    t.jsonb "properties"
    t.datetime "time"
    t.index ["name", "time"], name: "index_ahoy_events_on_name_and_time"
    t.index ["properties"], name: "index_ahoy_events_on_properties", opclass: :jsonb_path_ops, using: :gin
    t.index ["user_id"], name: "index_ahoy_events_on_user_id"
    t.index ["visit_id"], name: "index_ahoy_events_on_visit_id"
  end

  create_table "ahoy_visits", force: :cascade do |t|
    t.string "visit_token"
    t.string "visitor_token"
    t.bigint "user_id"
    t.string "ip"
    t.text "user_agent"
    t.text "referrer"
    t.string "referring_domain"
    t.text "landing_page"
    t.string "browser"
    t.string "os"
    t.string "device_type"
    t.string "country"
    t.string "region"
    t.string "city"
    t.float "latitude"
    t.float "longitude"
    t.string "utm_source"
    t.string "utm_medium"
    t.string "utm_term"
    t.string "utm_content"
    t.string "utm_campaign"
    t.string "app_version"
    t.string "os_version"
    t.string "platform"
    t.datetime "started_at"
    t.index ["user_id"], name: "index_ahoy_visits_on_user_id"
    t.index ["visit_token"], name: "index_ahoy_visits_on_visit_token", unique: true
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "document"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bus_departures", force: :cascade do |t|
    t.string "destination"
    t.datetime "depart_time"
    t.string "company"
    t.string "bus_number"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "departure_dates"
    t.string "bus_type"
  end

  create_table "commontator_comments", force: :cascade do |t|
    t.bigint "thread_id", null: false
    t.string "creator_type", null: false
    t.bigint "creator_id", null: false
    t.string "editor_type"
    t.bigint "editor_id"
    t.text "body", null: false
    t.datetime "deleted_at"
    t.integer "cached_votes_up", default: 0
    t.integer "cached_votes_down", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "parent_id"
    t.index ["cached_votes_down"], name: "index_commontator_comments_on_cached_votes_down"
    t.index ["cached_votes_up"], name: "index_commontator_comments_on_cached_votes_up"
    t.index ["creator_id", "creator_type", "thread_id"], name: "index_commontator_comments_on_c_id_and_c_type_and_t_id"
    t.index ["editor_type", "editor_id"], name: "index_commontator_comments_on_editor_type_and_editor_id"
    t.index ["parent_id"], name: "index_commontator_comments_on_parent_id"
    t.index ["thread_id", "created_at"], name: "index_commontator_comments_on_thread_id_and_created_at"
  end

  create_table "commontator_subscriptions", force: :cascade do |t|
    t.bigint "thread_id", null: false
    t.string "subscriber_type", null: false
    t.bigint "subscriber_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["subscriber_id", "subscriber_type", "thread_id"], name: "index_commontator_subscriptions_on_s_id_and_s_type_and_t_id", unique: true
    t.index ["thread_id"], name: "index_commontator_subscriptions_on_thread_id"
  end

  create_table "commontator_threads", force: :cascade do |t|
    t.string "commontable_type"
    t.bigint "commontable_id"
    t.string "closer_type"
    t.bigint "closer_id"
    t.datetime "closed_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["closer_type", "closer_id"], name: "index_commontator_threads_on_closer_type_and_closer_id"
    t.index ["commontable_type", "commontable_id"], name: "index_commontator_threads_on_c_id_and_c_type", unique: true
  end

  create_table "donations", force: :cascade do |t|
    t.string "donor_name"
    t.string "address"
    t.string "contact"
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "donation_amount"
    t.boolean "verification"
    t.index ["project_id"], name: "index_donations_on_project_id"
  end

  create_table "donors", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone1"
    t.string "phone2"
    t.string "blood_group"
    t.string "status"
    t.string "verified"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "gender"
    t.string "slug"
    t.integer "age"
    t.index ["slug"], name: "index_donors_on_slug", unique: true
  end

  create_table "emergency_numbers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "location"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "date"
  end

  create_table "forum_categories", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.string "slug", null: false
    t.string "color", default: "000000"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forum_posts", id: :serial, force: :cascade do |t|
    t.integer "forum_thread_id"
    t.integer "user_id"
    t.text "body"
    t.boolean "solved", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forum_subscriptions", id: :serial, force: :cascade do |t|
    t.integer "forum_thread_id"
    t.integer "user_id"
    t.string "subscription_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forum_threads", id: :serial, force: :cascade do |t|
    t.integer "forum_category_id"
    t.integer "user_id"
    t.string "title", null: false
    t.string "slug", null: false
    t.integer "forum_posts_count", default: 0
    t.boolean "pinned", default: false
    t.boolean "solved", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "galleries", force: :cascade do |t|
    t.bigint "model_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.index ["model_id"], name: "index_galleries_on_model_id"
  end

  create_table "gamifications", force: :cascade do |t|
    t.integer "points"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_gamifications_on_user_id"
  end

  create_table "listingrequests", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "owner"
    t.string "phone"
    t.text "description"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "owner"
    t.string "phone"
    t.text "description"
    t.bigint "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.decimal "longitude"
    t.decimal "lattitude"
    t.integer "rating"
    t.integer "status"
    t.string "slug"
    t.index ["slug"], name: "index_listings_on_slug", unique: true
    t.index ["tag_id"], name: "index_listings_on_tag_id"
  end

  create_table "market_place_images", force: :cascade do |t|
    t.integer "marketplace_id"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "marketplaces", force: :cascade do |t|
    t.string "prod_name"
    t.string "seller_name"
    t.integer "price"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "phone"
    t.string "description"
    t.integer "user_id"
  end

  create_table "models", force: :cascade do |t|
    t.string "name"
    t.datetime "dob"
    t.string "gender"
    t.string "ethnicity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.index ["slug"], name: "index_models_on_slug", unique: true
  end

  create_table "note_apis", force: :cascade do |t|
    t.string "asset_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string "asset_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pet_adoptions", force: :cascade do |t|
    t.string "pet_name"
    t.string "pet_type"
    t.string "location"
    t.string "contact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
  end

  create_table "professionals", force: :cascade do |t|
    t.string "name"
    t.string "contact"
    t.bigint "profession_id", null: false
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "address"
    t.index ["profession_id"], name: "index_professionals_on_profession_id"
  end

  create_table "professions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "project_expenses", force: :cascade do |t|
    t.string "expenditure_title"
    t.string "ammount"
    t.string "biils"
    t.string "project_belongs_to"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "project_id"
  end

  create_table "project_images", force: :cascade do |t|
    t.integer "project_id"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "project_name"
    t.text "project_description"
    t.string "foundation_name"
    t.text "foundation_description"
    t.string "organized_by"
    t.text "organizer_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "coverimage"
    t.string "tagline"
    t.string "payment_details"
  end

  create_table "realestate_images", force: :cascade do |t|
    t.integer "realestate_id"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "realestates", force: :cascade do |t|
    t.string "seller_name"
    t.string "seller_phone"
    t.string "price"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ptype"
    t.string "propertyname"
    t.string "address"
    t.string "bedroom"
    t.string "kitchen"
    t.string "bathroom"
    t.string "slug"
    t.integer "user_id"
    t.float "latitude"
    t.float "longitude"
    t.index ["slug"], name: "index_realestates_on_slug", unique: true
  end

  create_table "reviews", force: :cascade do |t|
    t.string "name"
    t.string "comment"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "listing_id", null: false
    t.index ["listing_id"], name: "index_reviews_on_listing_id"
  end

  create_table "searchedkeywords", force: :cascade do |t|
    t.string "word"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "statistics", force: :cascade do |t|
    t.string "population"
    t.string "wards"
    t.string "area"
    t.string "map"
    t.string "mayor"
    t.string "sub_mayor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "title_en"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "listings_count"
    t.string "title_np"
    t.boolean "top_service"
  end

  create_table "tourist_images", force: :cascade do |t|
    t.string "image"
    t.bigint "tourist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tourist_id"], name: "index_tourist_images_on_tourist_id"
  end

  create_table "tourists", force: :cascade do |t|
    t.string "place_name"
    t.string "location"
    t.string "contact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.string "longitude"
    t.string "lattitude"
    t.string "feature"
    t.string "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vacancies", force: :cascade do |t|
    t.text "about_company"
    t.string "job_title"
    t.string "job_category"
    t.string "job_level"
    t.string "no_of_vacancy"
    t.string "employment_type"
    t.string "offered_salary"
    t.datetime "apply_before"
    t.string "education_level"
    t.string "experience_required"
    t.string "professional_skill"
    t.text "other_specification"
    t.text "job_desciption"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "location"
    t.string "company_name"
    t.string "contactnumber"
    t.string "emailid"
    t.string "slug"
    t.index ["slug"], name: "index_vacancies_on_slug", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "commontator_comments", "commontator_comments", column: "parent_id", on_update: :restrict, on_delete: :cascade
  add_foreign_key "commontator_comments", "commontator_threads", column: "thread_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "commontator_subscriptions", "commontator_threads", column: "thread_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "donations", "projects"
  add_foreign_key "forum_posts", "forum_threads"
  add_foreign_key "forum_posts", "users"
  add_foreign_key "forum_subscriptions", "forum_threads"
  add_foreign_key "forum_subscriptions", "users"
  add_foreign_key "forum_threads", "forum_categories"
  add_foreign_key "forum_threads", "users"
  add_foreign_key "galleries", "models"
  add_foreign_key "gamifications", "users"
  add_foreign_key "listings", "tags"
  add_foreign_key "professionals", "professions"
  add_foreign_key "reviews", "listings"
  add_foreign_key "tourist_images", "tourists"
end
