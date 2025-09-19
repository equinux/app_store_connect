# frozen_string_literal: true

module AppStoreConnect
  module Requests
    module V1
      module AppScreenshotSet
        class Create < Request::Body
          data do
            type 'appScreenshotSets'

            attributes do
              property :screenshot_display_type, required: true
            end
          end
        end
      end
    end
  end
end

