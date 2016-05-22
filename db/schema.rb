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

ActiveRecord::Schema.define(version: 20160519164904) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "bcc_reports", force: :cascade do |t|
    t.date     "sensitization_date"
    t.string   "Venue",              limit: 255
    t.integer  "male_fp_rh",         limit: 4
    t.integer  "female_fp_rh",       limit: 4
    t.integer  "male_mnh",           limit: 4
    t.integer  "female_mnh",         limit: 4
    t.integer  "male_malaria",       limit: 4
    t.integer  "female_malaria",     limit: 4
    t.integer  "district_id",        limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "bcc_reports", ["district_id"], name: "index_bcc_reports_on_district_id", using: :btree

  create_table "district_hospitals", force: :cascade do |t|
    t.string   "dh_name",     limit: 255
    t.integer  "district_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "district_hospitals", ["district_id"], name: "index_district_hospitals_on_district_id", using: :btree

  create_table "districts", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "province_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "districts", ["province_id"], name: "index_districts_on_province_id", using: :btree

  create_table "facilities", force: :cascade do |t|
    t.string   "facility_name",        limit: 255
    t.integer  "district_id",          limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "district_hospital_id", limit: 4
  end

  add_index "facilities", ["district_hospital_id"], name: "index_facilities_on_district_hospital_id", using: :btree
  add_index "facilities", ["district_id"], name: "index_facilities_on_district_id", using: :btree

  create_table "family_planning_reports", force: :cascade do |t|
    t.date     "report_period"
    t.integer  "delivery_1",                   limit: 4
    t.integer  "delivery_2",                   limit: 4
    t.integer  "neonantology_male",            limit: 4
    t.integer  "neonantology_female",          limit: 4
    t.integer  "anc_oral_contraceptive",       limit: 4
    t.integer  "anc_injectable",               limit: 4
    t.integer  "anc_implants",                 limit: 4
    t.integer  "anc_iud",                      limit: 4
    t.integer  "anc_male_condom",              limit: 4
    t.integer  "anc_female_condom",            limit: 4
    t.integer  "anc_barriers",                 limit: 4
    t.integer  "anc_cycle_beads",              limit: 4
    t.integer  "anc_auto_observation",         limit: 4
    t.integer  "anc_tubal_ligation",           limit: 4
    t.integer  "anc_vasectomy",                limit: 4
    t.integer  "acceptors_1",                  limit: 4
    t.integer  "acceptors_2",                  limit: 4
    t.integer  "acceptors_oral_contraceptive", limit: 4
    t.integer  "acceptors_injectable",         limit: 4
    t.integer  "acceptors_implants",           limit: 4
    t.integer  "acceptors_iud",                limit: 4
    t.integer  "acceptors_male_condom",        limit: 4
    t.integer  "acceptors_female_codom",       limit: 4
    t.integer  "acceptors_other_barriers",     limit: 4
    t.integer  "acceptors_cycle_beads",        limit: 4
    t.integer  "acceptors_auto_observation",   limit: 4
    t.integer  "acceptors_tubal_ligation",     limit: 4
    t.integer  "acceptors_vasectomy",          limit: 4
    t.integer  "facility_id",                  limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "family_planning_reports", ["facility_id"], name: "index_family_planning_reports_on_facility_id", using: :btree

  create_table "gender_reports", force: :cascade do |t|
    t.date     "meeting_date"
    t.string   "meeting_venue",             limit: 255
    t.integer  "hf_targeted",               limit: 4
    t.integer  "hf_participated",           limit: 4
    t.integer  "admin_sector_targeted",     limit: 4
    t.integer  "admin_sector_participated", limit: 4
    t.integer  "admin_cell_targeted",       limit: 4
    t.integer  "admin_cell_participated",   limit: 4
    t.integer  "male_10_14",                limit: 4
    t.integer  "female_10_14",              limit: 4
    t.integer  "male_15_19",                limit: 4
    t.integer  "female_15_19",              limit: 4
    t.integer  "male_20_24",                limit: 4
    t.integer  "female_20_24",              limit: 4
    t.integer  "male_25_29",                limit: 4
    t.integer  "female_25_29",              limit: 4
    t.integer  "male_30_49",                limit: 4
    t.integer  "female_30_49",              limit: 4
    t.integer  "male_50_above",             limit: 4
    t.integer  "female_50_above",           limit: 4
    t.integer  "district_id",               limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "gender_reports", ["district_id"], name: "index_gender_reports_on_district_id", using: :btree

  create_table "hmis_reports", force: :cascade do |t|
    t.date     "periode"
    t.integer  "imci_diarrhea_dehydratation",               limit: 4
    t.integer  "imci_diarrhea_evident_dehydratation",       limit: 4
    t.integer  "imci_diarrhea_no_dehydratation",            limit: 4
    t.integer  "imci_peneumonie",                           limit: 4
    t.integer  "gbv_symptoms_sexual_new_F",                 limit: 4
    t.integer  "gbv_symptoms_sexual_new_M",                 limit: 4
    t.integer  "gbv_symptoms_Physical_new_F",               limit: 4
    t.integer  "gbv_symptoms_Physical_new_M",               limit: 4
    t.integer  "anc_new",                                   limit: 4
    t.integer  "anc_trim_1_visit",                          limit: 4
    t.integer  "anc_4th__visit",                            limit: 4
    t.integer  "anc_new_fullCource",                        limit: 4
    t.integer  "deliveries_total",                          limit: 4
    t.integer  "deliveries_16_19",                          limit: 4
    t.integer  "deliveries_under_15",                       limit: 4
    t.integer  "births_live",                               limit: 4
    t.integer  "births_live_weight_2_5kg",                  limit: 4
    t.integer  "premature_weight_2_5kg_22_73Weeks",         limit: 4
    t.integer  "newborns_breastfed_1hour",                  limit: 4
    t.integer  "newborns_not_cry",                          limit: 4
    t.integer  "newborns_not_cry_resuscited",               limit: 4
    t.integer  "newborns_not_cry_resuscited_successfully",  limit: 4
    t.integer  "pnc_new",                                   limit: 4
    t.integer  "pnc_standard_visit_1_3days",                limit: 4
    t.integer  "fp_new",                                    limit: 4
    t.integer  "fp_active_end_month",                       limit: 4
    t.integer  "iron_sulfate_folic",                        limit: 4
    t.integer  "micropostal",                               limit: 4
    t.integer  "low_birth_weight_KMC",                      limit: 4
    t.integer  "fistula_repair",                            limit: 4
    t.integer  "malaria_confirmed_under_5_F",               limit: 4
    t.integer  "malaria_confirmed_under_5_M",               limit: 4
    t.integer  "malaria_confirmed_over_5_F",                limit: 4
    t.integer  "malaria_confirmed_over_5_M",                limit: 4
    t.integer  "malaria_conf_minor_digest_sympt_under_5_F", limit: 4
    t.integer  "malaria_conf_minor_digest_sympt_under_5_M", limit: 4
    t.integer  "malaria_conf_minor_digest_sympt_over_5_F",  limit: 4
    t.integer  "malaria_conf_minor_digest_sympt_over_5_M",  limit: 4
    t.integer  "malaria_simple_imci_under_5_F",             limit: 4
    t.integer  "malaria_simple_imci_under_5_M",             limit: 4
    t.integer  "malaria_simple_imci_over_5_F",              limit: 4
    t.integer  "malaria_simple_imci_over_5_M",              limit: 4
    t.integer  "malaria_simple_pregnancy",                  limit: 4
    t.integer  "malaria_minor_digest_sympt_pregnancy",      limit: 4
    t.integer  "bloodSmears_plasmodium_positives",          limit: 4
    t.integer  "rapiddiagnostic_tests_malaria_positives",   limit: 4
    t.integer  "rapiddiagnostic_tests_malaria_negatives",   limit: 4
    t.integer  "facility_id",                               limit: 4
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
  end

  add_index "hmis_reports", ["facility_id"], name: "index_hmis_reports_on_facility_id", using: :btree

  create_table "provinces", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "trainings", force: :cascade do |t|
    t.string   "location",                        limit: 255
    t.string   "organizer",                       limit: 255
    t.date     "startdate"
    t.date     "enddate"
    t.string   "name_surname",                    limit: 255
    t.string   "gender",                          limit: 255
    t.string   "provenance_district",             limit: 255
    t.string   "place_of_work",                   limit: 255
    t.string   "position",                        limit: 255
    t.string   "qualification",                   limit: 255
    t.string   "telephone",                       limit: 255
    t.string   "email",                           limit: 255
    t.integer  "duration_days",                   limit: 4
    t.string   "type_name_of_training",           limit: 255
    t.float    "pre_test",                        limit: 24
    t.float    "post_test",                       limit: 24
    t.date     "date_of_post_training_follow_up"
    t.string   "technical_area",                  limit: 255
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_foreign_key "bcc_reports", "districts"
  add_foreign_key "district_hospitals", "districts"
  add_foreign_key "districts", "provinces"
  add_foreign_key "facilities", "district_hospitals"
  add_foreign_key "facilities", "districts"
  add_foreign_key "family_planning_reports", "facilities"
  add_foreign_key "gender_reports", "districts"
  add_foreign_key "hmis_reports", "facilities"
end
