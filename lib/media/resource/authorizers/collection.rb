require "media/web"

module Media
  module Resource
    module Authorizers
      class Collection < Web::Authorizers::Open

        def fields
          %w(name description)
        end
      end
    end
  end
end
