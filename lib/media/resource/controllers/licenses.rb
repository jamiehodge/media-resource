require_relative "base"

module Media
  module Resource
    module Controllers
      class Licenses < Base

        set(:authorizer) { Web::Policies::Static }
        set(:model)      { Models::License }

        index
        show
      end
    end
  end
end
