# frozen_string_literal: true

module AppStoreConnect
  module Requests
    module V1
      module AppScreenshot
        class Create < Request::Body
          data do
            type 'appScreenshots'

            attributes do
              property :file_name, required: true
              property :file_size, required: true
            end

            # relationships can be provided at call time via the `relationships:` kwarg
          end
        end
      end
    end
  end
end
