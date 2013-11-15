require_relative "base"

module Media
  module Resource
    module Controllers
      class Collections < Base

        set(:model)  { Models::Collection }
        set(:policy) { Policies::Collection }

        crud
      end
    end
  end
end
