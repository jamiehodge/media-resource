require_relative "base"

module Media
  module Resource
    module Policies
      class Resource < Base

        def fields
          %w(name description category_id language_id license_id file_id)
        end
      end
    end
  end
end
