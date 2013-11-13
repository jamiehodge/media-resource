require_relative "base"

module Media
  module Resource
    module Controllers
      class Languages < Base

        set(:authorizer) { Web::Authorizers::Static }
        set(:model)      { Models::Language }

        index
        show
      end
    end
  end
end
