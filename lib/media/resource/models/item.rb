require "media/persistence"

module Media
  module Resource
    module Models
      class Item < Persistence::Models::Base
        plugin :list, scope: :collection_id

        many_to_one :collection
        many_to_one :resource

        def before_validation
          self.position ||= last_position + 1
          super
        end

        def validate
          super
          validates_uuid [:collection_id, :resource_id]
        end
      end
    end
  end
end
