require "media/web"

module Media
  module Resource
    module Controllers
      class Base < Web::Controllers::Base
        set(:root) { File.expand_path("../../", __FILE__) }
      end
    end
  end
end
