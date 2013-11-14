require_relative "base"

module Media
  module Resource
    module Controllers
      class Items < Base

        set(:authorizer) { Policies::Item }
        set(:model)      { Models::Item }

        crud
      end
    end
  end
end
