require_relative "base"

module Media
  module Resource
    module Models
      class Collection < Base
        one_to_many :items
        one_to_many :resources, join_table: :items
      end
    end
  end
end
