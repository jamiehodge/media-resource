require "media/web"

module Media
  module Resource
    module Authorizers
      class Item < Web::Authorizers::Open

        def fields
          %w(collection_id position resource_id)
        end
      end
    end
  end
end
