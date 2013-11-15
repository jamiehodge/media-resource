require_relative "base"

module Media
  module Resource
    module Controllers
      class Resources < Base

        set(:model)  { Models::Resource }
        set(:policy) { Policies::Resource }

        crud
      end
    end
  end
end
