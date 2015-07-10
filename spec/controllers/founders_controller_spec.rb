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

  describe "GET new" do
    subject { get :new }

    before do
       subject
     end

    it "renders the new template" do
      expect(response).to render_template :new
    end

    it "instantiates a founder" do
      expect(assigns(:founder)).to be_instance_of Founder
    end
  end

  describe "POST create" do
    before do
      subject
    end

    context "with valid params" do
      subject { post :create, founder: {name: "Rick Marini", quote: "Find your technology soulmate."} }

      it "redirects to the show template" do
        founder = Founder.first
        expect(response).to redirect_to founder_path(founder)
      end

      it "creates a founder in the database" do
        expect(Founder.count).to eq 1
      end
    end
  end
end
