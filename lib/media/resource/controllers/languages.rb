require_relative "base"

module Media
  module Resource
    module Controllers
      class Languages < Base

        set(:model)  { Models::Language }
        set(:policy) { Web::Policies::Static }

        index
        show
      end
    end
  end
end
