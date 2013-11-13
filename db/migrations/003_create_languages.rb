Sequel.migration do
  up do
    create_table :languages do
      uuid_primary_key

      text :code, null: false
      text :name, null: false

      timestamps
      lock_version

      full_text_index [:code, :name]
    end

    create_timestamp_trigger :languages
  end

  down do
    drop_timestamp_trigger :languages
    drop_table :languages
  end
end
