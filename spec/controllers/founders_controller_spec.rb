require 'rails_helper'

describe FoundersController do
  describe "GET index" do
    subject { get :index }
    before { subject }

    it "renders the index template" do
      expect(response).to render_template :index
    end

    skip "finds all the founders" do
      expect(assigns(:founder).count).to eq 2
    end
  end
end
