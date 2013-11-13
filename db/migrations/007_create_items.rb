Sequel.migration do
  up do
    create_table :items do
      uuid_primary_key

      uuid_foreign_key :collection_id, :collections, on_delete: :cascade
      uuid_foreign_key :resource_id, :resources, on_delete: :cascade

      integer :position, null: false

      timestamps
      lock_version

      unique [:collection_id, :resource_id]
    end

    create_timestamp_trigger :items
  end

  down do
    drop_timestamp_trigger :items
    drop_table :items
  end
end
