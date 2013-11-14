require_relative "base"

module Media
  module Resource
    module Controllers
      class Languages < Base

        set(:authorizer) { Web::Policies::Static }
        set(:model)      { Models::Language }

        index
        show
      end
    end
  end
end
