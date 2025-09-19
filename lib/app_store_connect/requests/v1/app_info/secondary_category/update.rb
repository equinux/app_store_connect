# frozen_string_literal: true

module AppStoreConnect
  module Requests
    module V1
      module AppInfo
        module SecondaryCategory
          class Update < Request::Body
            data do
              id :app_category_id
              type 'appCategories'
            end
          end
        end
      end
    end
  end
end

