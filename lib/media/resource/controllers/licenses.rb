require_relative "base"

module Media
  module Resource
    module Controllers
      class Licenses < Base

        set(:model)  { Models::License }
        set(:policy) { Web::Policies::Static }

        index
        show
      end
    end
  end
end
