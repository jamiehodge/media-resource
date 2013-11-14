require_relative "base"

module Media
  module Resource
    module Controllers
      class Categories < Base

        set(:authorizer) { Web::Policies::Static }
        set(:model)      { Models::Category }

        index
        show
      end
    end
  end
end
