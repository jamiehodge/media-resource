require_relative "base"

module Media
  module Resource
    module Models
      class Resource < Base

        many_to_one :category
        many_to_one :language
        many_to_one :license

        one_to_many :items
        one_to_many :collections, join_table: :items

        def validate
          super
          validates_uuid [:category_id, :language_id, :license_id]
        end
      end
    end
  end
end
