require_relative "base"

module Media
  module Resource
    module Controllers
      class Items < Base

        set(:model)  { Models::Item }
        set(:policy) { Policies::Item }

        crud
      end
    end
  end
end
