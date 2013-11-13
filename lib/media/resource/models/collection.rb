require "media/persistence"

module Media
  module Resource
    module Models
      class Collection < Persistence::Models::Base
        one_to_many :items
        one_to_many :resources, join_table: :items
      end
    end
  end
end
