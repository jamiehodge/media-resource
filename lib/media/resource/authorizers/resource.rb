require "media/web"

module Media
  module Resource
    module Authorizers
      class Resource < Web::Authorizers::Open

        def fields
          %w(name description category_id language_id license_id file_id)
        end
      end
    end
  end
end
