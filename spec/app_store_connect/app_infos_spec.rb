# frozen_string_literal: true

RSpec.describe AppStoreConnect::Client do
  let(:private_key) { File.read(File.join(__dir__, '../support/fixtures/private_key.pem')) }
  let(:key_id) { 'M3225B466N' }
  let(:issuer_id) { '69a6de70-03db-47e3-e053-5b8c7c11a4d1' }

  subject(:client) do
    described_class.new(
      issuer_id: issuer_id,
      key_id: key_id,
      private_key: private_key
    )
  end

  describe '#app_infos' do
    before { client.app_infos }

    it_behaves_like :get_request, path: 'appInfos'
  end

  describe '#app_info' do
    let(:id) { '1234' }

    before { client.app_info(id: id) }

    it_behaves_like :get_request, path: 'appInfos/1234'
  end

  describe '#app_app_infos' do
    let(:id) { '1234' }

    before { client.app_app_infos(id: id) }

    it_behaves_like :get_request, path: 'apps/1234/appInfos'
  end

  describe '#app_info_app' do
    let(:id) { '1234' }

    before { client.app_info_app(id: id) }

    it_behaves_like :get_request, path: 'appInfos/1234/app'
  end

  describe '#app_info_relationships_app' do
    let(:id) { '1234' }

    before { client.app_info_relationships_app(id: id) }

    it_behaves_like :get_request, path: 'appInfos/1234/relationships/app'
  end

  describe '#app_info_age_rating_declaration' do
    let(:id) { '1234' }

    before { client.app_info_age_rating_declaration(id: id) }

    it_behaves_like :get_request, path: 'appInfos/1234/ageRatingDeclaration'
  end

  describe '#app_info_relationships_age_rating_declaration' do
    let(:id) { '1234' }

    before { client.app_info_relationships_age_rating_declaration(id: id) }

    it_behaves_like :get_request, path: 'appInfos/1234/relationships/ageRatingDeclaration'
  end

  describe '#app_info_primary_category' do
    let(:id) { '1234' }

    before { client.app_info_primary_category(id: id) }

    it_behaves_like :get_request, path: 'appInfos/1234/primaryCategory'
  end

  describe '#app_info_relationships_primary_category' do
    let(:id) { '1234' }

    before { client.app_info_relationships_primary_category(id: id) }

    it_behaves_like :get_request, path: 'appInfos/1234/relationships/primaryCategory'
  end

  describe '#app_info_secondary_category' do
    let(:id) { '1234' }

    before { client.app_info_secondary_category(id: id) }

    it_behaves_like :get_request, path: 'appInfos/1234/secondaryCategory'
  end

  describe '#app_info_relationships_secondary_category' do
    let(:id) { '1234' }

    before { client.app_info_relationships_secondary_category(id: id) }

    it_behaves_like :get_request, path: 'appInfos/1234/relationships/secondaryCategory'
  end

  describe '#app_info_primary_subcategory_one' do
    let(:id) { '1234' }

    before { client.app_info_primary_subcategory_one(id: id) }

    it_behaves_like :get_request, path: 'appInfos/1234/primarySubcategoryOne'
  end

  describe '#app_info_relationships_primary_subcategory_one' do
    let(:id) { '1234' }

    before { client.app_info_relationships_primary_subcategory_one(id: id) }

    it_behaves_like :get_request, path: 'appInfos/1234/relationships/primarySubcategoryOne'
  end

  describe '#app_info_primary_subcategory_two' do
    let(:id) { '1234' }

    before { client.app_info_primary_subcategory_two(id: id) }

    it_behaves_like :get_request, path: 'appInfos/1234/primarySubcategoryTwo'
  end

  describe '#app_info_relationships_primary_subcategory_two' do
    let(:id) { '1234' }

    before { client.app_info_relationships_primary_subcategory_two(id: id) }

    it_behaves_like :get_request, path: 'appInfos/1234/relationships/primarySubcategoryTwo'
  end

  describe '#app_info_secondary_subcategory_one' do
    let(:id) { '1234' }

    before { client.app_info_secondary_subcategory_one(id: id) }

    it_behaves_like :get_request, path: 'appInfos/1234/secondarySubcategoryOne'
  end

  describe '#app_info_relationships_secondary_subcategory_one' do
    let(:id) { '1234' }

    before { client.app_info_relationships_secondary_subcategory_one(id: id) }

    it_behaves_like :get_request, path: 'appInfos/1234/relationships/secondarySubcategoryOne'
  end

  describe '#app_info_secondary_subcategory_two' do
    let(:id) { '1234' }

    before { client.app_info_secondary_subcategory_two(id: id) }

    it_behaves_like :get_request, path: 'appInfos/1234/secondarySubcategoryTwo'
  end

  describe '#app_info_relationships_secondary_subcategory_two' do
    let(:id) { '1234' }

    before { client.app_info_relationships_secondary_subcategory_two(id: id) }

    it_behaves_like :get_request, path: 'appInfos/1234/relationships/secondarySubcategoryTwo'
  end
end
  describe '#update_app_info' do
    let(:id) { '1234' }

    before do
      client.update_app_info(id: id, relationships: {})
    end

    it_behaves_like :patch_request, path: 'appInfos/1234'
  end

  describe '#update_app_info_primary_category' do
    let(:id) { '1234' }

    before do
      client.update_app_info_primary_category(id: id, app_category_id: 'cat1')
    end

    it_behaves_like :patch_request, path: 'appInfos/1234/relationships/primaryCategory'
  end

  describe '#update_app_info_primary_subcategory_one' do
    let(:id) { '1234' }

    before do
      client.update_app_info_primary_subcategory_one(id: id, app_category_id: 'cat2')
    end

    it_behaves_like :patch_request, path: 'appInfos/1234/relationships/primarySubcategoryOne'
  end

  describe '#update_app_info_primary_subcategory_two' do
    let(:id) { '1234' }

    before do
      client.update_app_info_primary_subcategory_two(id: id, app_category_id: 'cat3')
    end

    it_behaves_like :patch_request, path: 'appInfos/1234/relationships/primarySubcategoryTwo'
  end

  describe '#update_app_info_secondary_category' do
    let(:id) { '1234' }

    before do
      client.update_app_info_secondary_category(id: id, app_category_id: 'cat4')
    end

    it_behaves_like :patch_request, path: 'appInfos/1234/relationships/secondaryCategory'
  end

  describe '#update_app_info_secondary_subcategory_one' do
    let(:id) { '1234' }

    before do
      client.update_app_info_secondary_subcategory_one(id: id, app_category_id: 'cat5')
    end

    it_behaves_like :patch_request, path: 'appInfos/1234/relationships/secondarySubcategoryOne'
  end

  describe '#update_app_info_secondary_subcategory_two' do
    let(:id) { '1234' }

    before do
      client.update_app_info_secondary_subcategory_two(id: id, app_category_id: 'cat6')
    end

    it_behaves_like :patch_request, path: 'appInfos/1234/relationships/secondarySubcategoryTwo'
  end

