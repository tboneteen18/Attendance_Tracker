require 'rails_helper'

RSpec.describe ActivitiesController, type: :controller do
  let(:activity) {Activity.create(name: 'Music')}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
  #
  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end
  #
  describe "GET #create" do
    it "returns http success" do
      get :create, activity: {name: 'Drama'}
      expect(response).to have_http_status(:redirect)
    end
  end
  #
  describe "GET #show" do
    it "returns http success" do
      get :show, id: activity.id
      expect(response).to have_http_status(:success)
    end
  end
  #
  describe "GET #edit" do
    it "returns http success" do
      get :edit, id: activity.id
      expect(response).to have_http_status(:success)
    end
  end
  #
  describe "GET #update" do
    it "returns http success" do
      get :update, id: activity.id,  activity: {name: 'Drama'}
      expect(response).to have_http_status(:redirect)
    end
  end
  #
  describe "GET #destroy" do
    it "returns http success" do
      get :destroy, id: activity.id
      expect(response).to have_http_status(:redirect)
    end
  end

end
