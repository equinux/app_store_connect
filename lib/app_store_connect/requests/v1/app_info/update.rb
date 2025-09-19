# frozen_string_literal: true

module AppStoreConnect
  module Requests
    module V1
      module AppInfo
        class Update < Request::Body
          data do
            id
            type 'appInfos'
          end
        end
      end
    end
  end
end

