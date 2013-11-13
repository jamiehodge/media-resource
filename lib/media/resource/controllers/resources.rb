require_relative "base"

module Media
  module Resource
    module Controllers
      class Resources < Base

        set(:authorizer) { Authorizers::Resource }
        set(:model)      { Models::Resource }

        crud
      end
    end
  end
end
