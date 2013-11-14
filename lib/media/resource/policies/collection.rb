require_relative "base"

module Media
  module Resource
    module Policies
      class Collection < Base

        def fields
          %w(name description)
        end
      end
    end
  end
end
