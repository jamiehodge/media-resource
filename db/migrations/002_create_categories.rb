Sequel.migration do
  up do
    create_table :categories do
      uuid_primary_key

      uuid_foreign_key :parent_id, :categories, on_delete: :cascade, null: true

      integer :code, null: false
      text    :name, null: false

      unique [:code, :parent_id]

      timestamps
      lock_version

      full_text_index :name
    end

    create_timestamp_trigger :categories
  end

  down do
    drop_timestamp_trigger :categories
    drop_table :categories
  end
end
