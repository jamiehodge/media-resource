require_relative "base"

module Media
  module Resource
    module Controllers
      class Collections < Base

        set(:authorizer) { Authorizers::Collection }
        set(:model)      { Models::Collection }

        crud
      end
    end
  end
end
