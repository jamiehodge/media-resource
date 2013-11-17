require_relative "base"

module Media
  module Resource
    module Models
      class Category < Base
        one_to_many :resources
      end
    end
  end
end
