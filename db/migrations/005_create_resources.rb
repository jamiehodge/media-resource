Sequel.migration do
  up do
    create_table :resources do
      uuid_primary_key

      uuid_foreign_key :category_id, :categories
      uuid_foreign_key :language_id, :languages
      uuid_foreign_key :license_id, :licenses

      uuid :file_id

      text :name,        null: false
      text :description, null: false

      timestamps
      lock_version

      full_text_index [:name, :description]
    end

    create_timestamp_trigger :resources
  end

  down do
    drop_timestamp_trigger :resources
    drop_table :resources
  end
end
