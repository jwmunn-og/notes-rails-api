require 'rails_helper'

RSpec.describe TagsController, type: :controller do
  describe "tags#create action" do
    before do
      @note = FactoryBot.create(:note)
      post :create, params: { tag: { name: 'Crazy' }, note_id: @note.id }
    end
    
    it "should return 200 status code" do
      expect(response).to be_success
    end

    it "should successfully create and save a new tag in our database" do
      expect(@note.tags.first.name).to eq('Crazy')
    end
  end
end
