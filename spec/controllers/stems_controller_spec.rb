require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe StemsController do

  # This should return the minimal set of attributes required to create a valid
  # Stem. As you add validations to Stem, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "preamble" => "MyText" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # StemsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all stems as @stems" do
      stem = Stem.create! valid_attributes
      get :index, {}, valid_session
      assigns(:stems).should eq([stem])
    end
  end

  describe "GET show" do
    it "assigns the requested stem as @stem" do
      stem = Stem.create! valid_attributes
      get :show, {:id => stem.to_param}, valid_session
      assigns(:stem).should eq(stem)
    end
  end

  describe "GET new" do
    it "assigns a new stem as @stem" do
      get :new, {}, valid_session
      assigns(:stem).should be_a_new(Stem)
    end
  end

  describe "GET edit" do
    it "assigns the requested stem as @stem" do
      stem = Stem.create! valid_attributes
      get :edit, {:id => stem.to_param}, valid_session
      assigns(:stem).should eq(stem)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Stem" do
        expect {
          post :create, {:stem => valid_attributes}, valid_session
        }.to change(Stem, :count).by(1)
      end

      it "assigns a newly created stem as @stem" do
        post :create, {:stem => valid_attributes}, valid_session
        assigns(:stem).should be_a(Stem)
        assigns(:stem).should be_persisted
      end

      it "redirects to the created stem" do
        post :create, {:stem => valid_attributes}, valid_session
        response.should redirect_to(Stem.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved stem as @stem" do
        # Trigger the behavior that occurs when invalid params are submitted
        Stem.any_instance.stub(:save).and_return(false)
        post :create, {:stem => { "preamble" => "invalid value" }}, valid_session
        assigns(:stem).should be_a_new(Stem)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Stem.any_instance.stub(:save).and_return(false)
        post :create, {:stem => { "preamble" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested stem" do
        stem = Stem.create! valid_attributes
        # Assuming there are no other stems in the database, this
        # specifies that the Stem created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Stem.any_instance.should_receive(:update).with({ "preamble" => "MyText" })
        put :update, {:id => stem.to_param, :stem => { "preamble" => "MyText" }}, valid_session
      end

      it "assigns the requested stem as @stem" do
        stem = Stem.create! valid_attributes
        put :update, {:id => stem.to_param, :stem => valid_attributes}, valid_session
        assigns(:stem).should eq(stem)
      end

      it "redirects to the stem" do
        stem = Stem.create! valid_attributes
        put :update, {:id => stem.to_param, :stem => valid_attributes}, valid_session
        response.should redirect_to(stem)
      end
    end

    describe "with invalid params" do
      it "assigns the stem as @stem" do
        stem = Stem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Stem.any_instance.stub(:save).and_return(false)
        put :update, {:id => stem.to_param, :stem => { "preamble" => "invalid value" }}, valid_session
        assigns(:stem).should eq(stem)
      end

      it "re-renders the 'edit' template" do
        stem = Stem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Stem.any_instance.stub(:save).and_return(false)
        put :update, {:id => stem.to_param, :stem => { "preamble" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested stem" do
      stem = Stem.create! valid_attributes
      expect {
        delete :destroy, {:id => stem.to_param}, valid_session
      }.to change(Stem, :count).by(-1)
    end

    it "redirects to the stems list" do
      stem = Stem.create! valid_attributes
      delete :destroy, {:id => stem.to_param}, valid_session
      response.should redirect_to(stems_url)
    end
  end

end