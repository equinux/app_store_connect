# frozen_string_literal: true

module AppStoreConnect
  module Requests
    module V1
      module AppInfoLocalization
        class Create < Request::Body
          data do
            type 'appInfoLocalizations'

            attributes do
              property :locale, required: true
              property :name
              property :subtitle
              property :privacy_policy_text
              property :privacy_policy_url
              property :privacy_choices_url
            end
          end
        end
      end
    end
  end
end

