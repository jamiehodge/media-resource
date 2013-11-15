require_relative "base"

module Media
  module Resource
    module Controllers
      class Categories < Base

        set(:model)  { Models::Category }
        set(:policy) { Web::Policies::Static }

        index
        show
      end
    end
  end
end
