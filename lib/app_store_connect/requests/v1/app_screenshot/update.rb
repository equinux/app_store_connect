# frozen_string_literal: true

module AppStoreConnect
  module Requests
    module V1
      module AppScreenshot
        class Update < Request::Body
          data do
            id
            type 'appScreenshots'

            attributes do
              property :uploaded
              property :source_file_checksum
            end
          end
        end
      end
    end
  end
end

