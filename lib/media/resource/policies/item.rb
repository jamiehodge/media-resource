require_relative "base"

module Media
  module Resource
    module Policies
      class Item < Base

        def fields
          %w(collection_id position resource_id)
        end
      end
    end
  end
end
