Sequel.migration do
  up do
    create_table :collections do
      uuid_primary_key

      text :name,        null: false
      text :description, null: false

      timestamps
      lock_version

      full_text_index [:name, :description]
    end

    create_timestamp_trigger :collections
  end

  down do
    drop_timestamp_trigger :collections
    drop_table :collections
  end
end
