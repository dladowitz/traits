require 'rails_helper'

describe FoundersController do
  describe "GET index" do
    subject { get :index }
    before do
       create :founder, name: "Gabe Dillion"
       create :founder, name: "Hiten Shah"
       subject
     end

    it "renders the index template" do
      expect(response).to render_template :index
    end

    it "finds all the founders" do
      expect(assigns(:founders).count).to eq 2
    end
  end
end
