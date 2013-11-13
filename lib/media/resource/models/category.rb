require "media/persistence"

module Media
  module Resource
    module Models
      class Category < Persistence::Models::Base
        one_to_many :resources
      end
    end
  end
end
