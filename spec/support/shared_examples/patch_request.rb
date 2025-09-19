# frozen_string_literal: true

RSpec.shared_examples :patch_request do |path:, api_version: 'v1'|
  it do
    uri = "https://api.appstoreconnect.apple.com/#{api_version}/#{path}"

    expect(WebMock).to have_requested(:patch, uri)
  end
end

