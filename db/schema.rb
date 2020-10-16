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

ActiveRecord::Schema.define(version: 2020_10_16_230440) do

  create_table "botsentry", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "ip", limit: 64, null: false
    t.boolean "blacklisted", null: false
    t.bigint "datetime", null: false
    t.index ["ip"], name: "botsentry_pk", unique: true
  end

  create_table "friendly_id_slugs", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, length: { slug: 70, scope: 70 }
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", length: { slug: 140 }
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "group_staffs", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "group_id"
    t.bigint "staff_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_group_staffs_on_group_id"
    t.index ["staff_id"], name: "index_group_staffs_on_staff_id"
  end

  create_table "groups", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "identifier"
    t.string "name"
    t.string "colour_hex"
    t.integer "priority"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "luckperms_actions", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "time", null: false
    t.string "actor_uuid", limit: 36, null: false
    t.string "actor_name", limit: 100, null: false
    t.string "type", limit: 1, null: false
    t.string "acted_uuid", limit: 36, null: false
    t.string "acted_name", limit: 36, null: false
    t.string "action", limit: 300, null: false
  end

  create_table "luckperms_group_permissions", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", limit: 36, null: false
    t.string "permission", limit: 200, null: false
    t.boolean "value", null: false
    t.string "server", limit: 36, null: false
    t.string "world", limit: 64, null: false
    t.bigint "expiry", null: false
    t.string "contexts", limit: 200, null: false
    t.index ["name"], name: "luckperms_group_permissions_name"
  end

  create_table "luckperms_groups", primary_key: "name", id: :string, limit: 36, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
  end

  create_table "luckperms_messenger", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.timestamp "time", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.text "msg", null: false
  end

  create_table "luckperms_players", primary_key: "uuid", id: :string, limit: 36, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "username", limit: 16, null: false
    t.string "primary_group", limit: 36, null: false
    t.index ["username"], name: "luckperms_players_username"
  end

  create_table "luckperms_tracks", primary_key: "name", id: :string, limit: 36, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.text "groups", null: false
  end

  create_table "luckperms_user_permissions", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "uuid", limit: 36, null: false
    t.string "permission", limit: 200, null: false
    t.boolean "value", null: false
    t.string "server", limit: 36, null: false
    t.string "world", limit: 64, null: false
    t.bigint "expiry", null: false
    t.string "contexts", limit: 200, null: false
    t.index ["uuid"], name: "luckperms_user_permissions_uuid"
  end

  create_table "minecraft_servers", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "id", null: false
    t.string "name"
    t.string "family"
    t.string "datacenter"
    t.boolean "online"
    t.string "online_users"
    t.string "online_staff"
    t.string "version"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["id"], name: "index_minecraft_servers_on_id", unique: true
  end

  create_table "minecraft_users", primary_key: "uuid", id: :string, limit: 36, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nick", limit: 16
    t.string "password"
    t.boolean "premium"
    t.string "firstIP", limit: 15
    t.string "lastIP", limit: 15
    t.bigint "firstJoined"
    t.bigint "lastJoined"
    t.boolean "checked"
    t.boolean "registeredByAdmin"
    t.index ["nick"], name: "nick"
  end

  create_table "pgm_records", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "uuid", limit: 36
    t.string "nick", limit: 16
    t.integer "kills"
    t.integer "deaths"
    t.integer "killed"
    t.decimal "kd", precision: 3
    t.decimal "kk", precision: 3
    t.integer "wools"
    t.integer "monuments"
    t.integer "cores"
  end

  create_table "punishment_bans", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "uuid", limit: 36
    t.string "ip", limit: 45
    t.string "reason", limit: 2048, null: false
    t.string "banned_by_uuid", limit: 36
    t.string "banned_by_name", limit: 128
    t.string "removed_by_uuid", limit: 36
    t.string "removed_by_name", limit: 128
    t.timestamp "removed_by_date", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.bigint "time", null: false
    t.bigint "until", null: false
    t.string "server_scope", limit: 32
    t.string "server_origin", limit: 32
    t.binary "silent", limit: 1, null: false
    t.binary "ipban", limit: 1, null: false
    t.binary "ipban_wildcard", limit: 1, null: false
    t.binary "active", limit: 1, null: false
    t.index ["active"], name: "idx_punishment_bans_active"
    t.index ["banned_by_uuid"], name: "idx_punishment_bans_banned_by_uuid"
    t.index ["id"], name: "id", unique: true
    t.index ["ip"], name: "idx_punishment_bans_ip"
    t.index ["ipban"], name: "idx_punishment_bans_ipban"
    t.index ["ipban_wildcard"], name: "idx_punishment_bans_ipban_wildcard"
    t.index ["time"], name: "idx_punishment_bans_time"
    t.index ["until"], name: "idx_punishment_bans_until"
    t.index ["uuid"], name: "idx_punishment_bans_uuid"
  end

  create_table "punishment_config", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "version", limit: 128, null: false
    t.string "build", limit: 128, null: false
    t.string "timezone", limit: 32, default: "+00:00"
    t.index ["id"], name: "id", unique: true
  end

  create_table "punishment_history", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.timestamp "date", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "name", limit: 16, null: false
    t.string "uuid", limit: 36, null: false
    t.string "ip", limit: 45, null: false
    t.index ["id"], name: "id", unique: true
    t.index ["ip"], name: "idx_punishment_history_ip"
    t.index ["name"], name: "idx_punishment_history_name"
    t.index ["uuid"], name: "idx_punishment_history_uuid"
  end

  create_table "punishment_kicks", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "uuid", limit: 36
    t.string "ip", limit: 45
    t.string "reason", limit: 2048, null: false
    t.string "banned_by_uuid", limit: 36
    t.string "banned_by_name", limit: 128
    t.bigint "time", null: false
    t.bigint "until", null: false
    t.string "server_scope", limit: 32
    t.string "server_origin", limit: 32
    t.binary "silent", limit: 1, null: false
    t.binary "ipban", limit: 1, null: false
    t.binary "ipban_wildcard", limit: 1, null: false
    t.binary "active", limit: 1, null: false
    t.index ["active"], name: "idx_punishment_kicks_active"
    t.index ["banned_by_uuid"], name: "idx_punishment_kicks_banned_by_uuid"
    t.index ["id"], name: "id", unique: true
    t.index ["ip"], name: "idx_punishment_kicks_ip"
    t.index ["ipban"], name: "idx_punishment_kicks_ipban"
    t.index ["ipban_wildcard"], name: "idx_punishment_kicks_ipban_wildcard"
    t.index ["time"], name: "idx_punishment_kicks_time"
    t.index ["until"], name: "idx_punishment_kicks_until"
    t.index ["uuid"], name: "idx_punishment_kicks_uuid"
  end

  create_table "punishment_mutes", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "uuid", limit: 36
    t.string "ip", limit: 45
    t.string "reason", limit: 2048, null: false
    t.string "banned_by_uuid", limit: 36
    t.string "banned_by_name", limit: 128
    t.string "removed_by_uuid", limit: 36
    t.string "removed_by_name", limit: 128
    t.timestamp "removed_by_date", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.bigint "time", null: false
    t.bigint "until", null: false
    t.string "server_scope", limit: 32
    t.string "server_origin", limit: 32
    t.binary "silent", limit: 1, null: false
    t.binary "ipban", limit: 1, null: false
    t.binary "ipban_wildcard", limit: 1, null: false
    t.binary "active", limit: 1, null: false
    t.index ["active"], name: "idx_punishment_mutes_active"
    t.index ["banned_by_uuid"], name: "idx_punishment_mutes_banned_by_uuid"
    t.index ["id"], name: "id", unique: true
    t.index ["ip"], name: "idx_punishment_mutes_ip"
    t.index ["ipban"], name: "idx_punishment_mutes_ipban"
    t.index ["ipban_wildcard"], name: "idx_punishment_mutes_ipban_wildcard"
    t.index ["time"], name: "idx_punishment_mutes_time"
    t.index ["until"], name: "idx_punishment_mutes_until"
    t.index ["uuid"], name: "idx_punishment_mutes_uuid"
  end

  create_table "punishment_servers", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "name", limit: 32, null: false
    t.string "uuid", limit: 32, null: false
    t.timestamp "date", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["id"], name: "id", unique: true
    t.index ["uuid"], name: "idx_punishment_servers_uuid", unique: true
  end

  create_table "punishment_sync", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.integer "info", null: false, unsigned: true
    t.string "msg", limit: 4096, null: false
    t.timestamp "time", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["id"], name: "id", unique: true
  end

  create_table "punishment_warnings", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "uuid", limit: 36
    t.string "ip", limit: 45
    t.string "reason", limit: 2048, null: false
    t.string "banned_by_uuid", limit: 36
    t.string "banned_by_name", limit: 128
    t.string "removed_by_uuid", limit: 36
    t.string "removed_by_name", limit: 128
    t.timestamp "removed_by_date", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.bigint "time", null: false
    t.bigint "until", null: false
    t.string "server_scope", limit: 32
    t.string "server_origin", limit: 32
    t.binary "silent", limit: 1, null: false
    t.binary "ipban", limit: 1, null: false
    t.binary "ipban_wildcard", limit: 1, null: false
    t.binary "active", limit: 1, null: false
    t.binary "warned", limit: 1, null: false
    t.index ["active"], name: "idx_punishment_warnings_active"
    t.index ["banned_by_uuid"], name: "idx_punishment_warnings_banned_by_uuid"
    t.index ["id"], name: "id", unique: true
    t.index ["ip"], name: "idx_punishment_warnings_ip"
    t.index ["ipban"], name: "idx_punishment_warnings_ipban"
    t.index ["ipban_wildcard"], name: "idx_punishment_warnings_ipban_wildcard"
    t.index ["time"], name: "idx_punishment_warnings_time"
    t.index ["until"], name: "idx_punishment_warnings_until"
    t.index ["uuid"], name: "idx_punishment_warnings_uuid"
  end

  create_table "staffs", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "uuid"
    t.string "nick"
    t.string "role"
    t.string "email"
    t.string "discord"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "thredded_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "messageboard_id", null: false
    t.text "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "slug", null: false
    t.index ["messageboard_id", "slug"], name: "index_thredded_categories_on_messageboard_id_and_slug", unique: true, length: { slug: 191 }
    t.index ["messageboard_id"], name: "index_thredded_categories_on_messageboard_id"
    t.index ["name"], name: "thredded_categories_name_ci", length: 191
  end

  create_table "thredded_messageboard_groups", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.integer "position", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "thredded_messageboard_notifications_for_followed_topics", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "messageboard_id", null: false
    t.string "notifier_key", limit: 90, null: false
    t.boolean "enabled", default: true, null: false
    t.index ["user_id", "messageboard_id", "notifier_key"], name: "thredded_messageboard_notifications_for_followed_topics_unique", unique: true
  end

  create_table "thredded_messageboard_users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "thredded_user_detail_id", null: false
    t.bigint "thredded_messageboard_id", null: false
    t.datetime "last_seen_at", null: false
    t.index ["thredded_messageboard_id", "last_seen_at"], name: "index_thredded_messageboard_users_for_recently_active"
    t.index ["thredded_messageboard_id", "thredded_user_detail_id"], name: "index_thredded_messageboard_users_primary", unique: true
    t.index ["thredded_user_detail_id"], name: "fk_rails_06e42c62f5"
  end

  create_table "thredded_messageboards", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "name", null: false
    t.text "slug"
    t.text "description"
    t.integer "topics_count", default: 0
    t.integer "posts_count", default: 0
    t.integer "position", null: false
    t.bigint "last_topic_id"
    t.bigint "messageboard_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "locked", default: false, null: false
    t.index ["messageboard_group_id"], name: "index_thredded_messageboards_on_messageboard_group_id"
    t.index ["slug"], name: "index_thredded_messageboards_on_slug", unique: true, length: 191
  end

  create_table "thredded_notifications_for_followed_topics", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "notifier_key", limit: 90, null: false
    t.boolean "enabled", default: true, null: false
    t.index ["user_id", "notifier_key"], name: "thredded_notifications_for_followed_topics_unique", unique: true
  end

  create_table "thredded_notifications_for_private_topics", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "notifier_key", limit: 90, null: false
    t.boolean "enabled", default: true, null: false
    t.index ["user_id", "notifier_key"], name: "thredded_notifications_for_private_topics_unique", unique: true
  end

  create_table "thredded_post_moderation_records", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "post_id"
    t.bigint "messageboard_id"
    t.text "post_content"
    t.bigint "post_user_id"
    t.text "post_user_name"
    t.bigint "moderator_id"
    t.integer "moderation_state", null: false
    t.integer "previous_moderation_state", null: false
    t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["messageboard_id", "created_at"], name: "index_thredded_moderation_records_for_display"
  end

  create_table "thredded_posts", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "user_id"
    t.text "content"
    t.string "source", limit: 191, default: "web"
    t.bigint "postable_id", null: false
    t.bigint "messageboard_id", null: false
    t.integer "moderation_state", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content"], name: "thredded_posts_content_fts", type: :fulltext
    t.index ["messageboard_id"], name: "index_thredded_posts_on_messageboard_id"
    t.index ["moderation_state", "updated_at"], name: "index_thredded_posts_for_display"
    t.index ["postable_id", "created_at"], name: "index_thredded_posts_on_postable_id_and_created_at"
    t.index ["postable_id"], name: "index_thredded_posts_on_postable_id"
    t.index ["user_id"], name: "index_thredded_posts_on_user_id"
  end

  create_table "thredded_private_posts", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "user_id"
    t.text "content"
    t.bigint "postable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["postable_id", "created_at"], name: "index_thredded_private_posts_on_postable_id_and_created_at"
  end

  create_table "thredded_private_topics", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "last_user_id"
    t.text "title", null: false
    t.text "slug", null: false
    t.integer "posts_count", default: 0
    t.string "hash_id", limit: 20, null: false
    t.datetime "last_post_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hash_id"], name: "index_thredded_private_topics_on_hash_id"
    t.index ["last_post_at"], name: "index_thredded_private_topics_on_last_post_at"
    t.index ["slug"], name: "index_thredded_private_topics_on_slug", unique: true, length: 191
  end

  create_table "thredded_private_users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "private_topic_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["private_topic_id"], name: "index_thredded_private_users_on_private_topic_id"
    t.index ["user_id"], name: "index_thredded_private_users_on_user_id"
  end

  create_table "thredded_topic_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "topic_id", null: false
    t.bigint "category_id", null: false
    t.index ["category_id"], name: "index_thredded_topic_categories_on_category_id"
    t.index ["topic_id"], name: "index_thredded_topic_categories_on_topic_id"
  end

  create_table "thredded_topics", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "last_user_id"
    t.text "title", null: false
    t.text "slug", null: false
    t.bigint "messageboard_id", null: false
    t.integer "posts_count", default: 0, null: false
    t.boolean "sticky", default: false, null: false
    t.boolean "locked", default: false, null: false
    t.string "hash_id", limit: 20, null: false
    t.integer "moderation_state", null: false
    t.datetime "last_post_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hash_id"], name: "index_thredded_topics_on_hash_id"
    t.index ["last_post_at"], name: "index_thredded_topics_on_last_post_at"
    t.index ["messageboard_id"], name: "index_thredded_topics_on_messageboard_id"
    t.index ["moderation_state", "sticky", "updated_at"], name: "index_thredded_topics_for_display"
    t.index ["slug"], name: "index_thredded_topics_on_slug", unique: true, length: 191
    t.index ["title"], name: "thredded_topics_title_fts", type: :fulltext
    t.index ["user_id"], name: "index_thredded_topics_on_user_id"
  end

  create_table "thredded_user_details", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "latest_activity_at"
    t.integer "posts_count", default: 0
    t.integer "topics_count", default: 0
    t.datetime "last_seen_at"
    t.integer "moderation_state", default: 0, null: false
    t.timestamp "moderation_state_changed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["latest_activity_at"], name: "index_thredded_user_details_on_latest_activity_at"
    t.index ["moderation_state", "moderation_state_changed_at"], name: "index_thredded_user_details_for_moderations"
    t.index ["user_id"], name: "index_thredded_user_details_on_user_id", unique: true
  end

  create_table "thredded_user_messageboard_preferences", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "messageboard_id", null: false
    t.boolean "follow_topics_on_mention", default: true, null: false
    t.boolean "auto_follow_topics", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "messageboard_id"], name: "thredded_user_messageboard_preferences_user_id_messageboard_id", unique: true
  end

  create_table "thredded_user_post_notifications", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "post_id", null: false
    t.datetime "notified_at", null: false
    t.index ["post_id"], name: "index_thredded_user_post_notifications_on_post_id"
    t.index ["user_id", "post_id"], name: "index_thredded_user_post_notifications_on_user_id_and_post_id", unique: true
  end

  create_table "thredded_user_preferences", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.boolean "follow_topics_on_mention", default: true, null: false
    t.boolean "auto_follow_topics", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_thredded_user_preferences_on_user_id", unique: true
  end

  create_table "thredded_user_private_topic_read_states", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "postable_id", null: false
    t.integer "unread_posts_count", default: 0, null: false
    t.integer "read_posts_count", default: 0, null: false
    t.integer "integer", default: 0, null: false
    t.timestamp "read_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["user_id", "postable_id"], name: "thredded_user_private_topic_read_states_user_postable", unique: true
  end

  create_table "thredded_user_topic_follows", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "topic_id", null: false
    t.datetime "created_at", null: false
    t.integer "reason", limit: 1
    t.index ["user_id", "topic_id"], name: "thredded_user_topic_follows_user_topic", unique: true
  end

  create_table "thredded_user_topic_read_states", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "messageboard_id", null: false
    t.bigint "user_id", null: false
    t.bigint "postable_id", null: false
    t.integer "unread_posts_count", default: 0, null: false
    t.integer "read_posts_count", default: 0, null: false
    t.integer "integer", default: 0, null: false
    t.timestamp "read_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["messageboard_id"], name: "index_thredded_user_topic_read_states_on_messageboard_id"
    t.index ["user_id", "messageboard_id"], name: "thredded_user_topic_read_states_user_messageboard"
    t.index ["user_id", "postable_id"], name: "thredded_user_topic_read_states_user_postable", unique: true
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", limit: 16, null: false
    t.string "uuid", limit: 36
    t.string "minecraft_token"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.boolean "admin", default: false
    t.boolean "mod", default: false
    t.text "about_me"
    t.text "gender"
    t.text "public_email"
    t.text "location"
    t.text "discord"
    t.text "github"
    t.text "instagram"
    t.text "crowdin"
    t.text "steam"
    t.text "twitter"
    t.text "occupation"
    t.text "interests"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "friends", null: false
    t.string "locale", default: "es_cl"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["minecraft_token"], name: "index_users_on_minecraft_token", unique: true
    t.index ["name"], name: "index_users_on_name", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uuid"], name: "index_users_on_uuid", unique: true
  end

  create_table "uuids", primary_key: "uuid", id: :string, limit: 36, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 16, null: false
    t.boolean "premium", null: false
    t.timestamp "lastUpdate", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["name"], name: "name", unique: true
  end

  add_foreign_key "thredded_messageboard_users", "thredded_messageboards", on_delete: :cascade
  add_foreign_key "thredded_messageboard_users", "thredded_user_details", on_delete: :cascade
  add_foreign_key "thredded_user_post_notifications", "thredded_posts", column: "post_id", on_delete: :cascade
  add_foreign_key "thredded_user_post_notifications", "users", on_delete: :cascade
end
