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

describe SignUpUsersController do

  # This should return the minimal set of attributes required to create a valid
  # SignUpUser. As you add validations to SignUpUser, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SignUpUsersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all sign_up_users as @sign_up_users" do
      sign_up_user = SignUpUser.create! valid_attributes
      get :index, {}, valid_session
      assigns(:sign_up_users).should eq([sign_up_user])
    end
  end

  describe "GET show" do
    it "assigns the requested sign_up_user as @sign_up_user" do
      sign_up_user = SignUpUser.create! valid_attributes
      get :show, {:id => sign_up_user.to_param}, valid_session
      assigns(:sign_up_user).should eq(sign_up_user)
    end
  end

  describe "GET new" do
    it "assigns a new sign_up_user as @sign_up_user" do
      get :new, {}, valid_session
      assigns(:sign_up_user).should be_a_new(SignUpUser)
    end
  end

  describe "GET edit" do
    it "assigns the requested sign_up_user as @sign_up_user" do
      sign_up_user = SignUpUser.create! valid_attributes
      get :edit, {:id => sign_up_user.to_param}, valid_session
      assigns(:sign_up_user).should eq(sign_up_user)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SignUpUser" do
        expect {
          post :create, {:sign_up_user => valid_attributes}, valid_session
        }.to change(SignUpUser, :count).by(1)
      end

      it "assigns a newly created sign_up_user as @sign_up_user" do
        post :create, {:sign_up_user => valid_attributes}, valid_session
        assigns(:sign_up_user).should be_a(SignUpUser)
        assigns(:sign_up_user).should be_persisted
      end

      it "redirects to the created sign_up_user" do
        post :create, {:sign_up_user => valid_attributes}, valid_session
        response.should redirect_to(SignUpUser.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sign_up_user as @sign_up_user" do
        # Trigger the behavior that occurs when invalid params are submitted
        SignUpUser.any_instance.stub(:save).and_return(false)
        post :create, {:sign_up_user => {  }}, valid_session
        assigns(:sign_up_user).should be_a_new(SignUpUser)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        SignUpUser.any_instance.stub(:save).and_return(false)
        post :create, {:sign_up_user => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested sign_up_user" do
        sign_up_user = SignUpUser.create! valid_attributes
        # Assuming there are no other sign_up_users in the database, this
        # specifies that the SignUpUser created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        SignUpUser.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => sign_up_user.to_param, :sign_up_user => { "these" => "params" }}, valid_session
      end

      it "assigns the requested sign_up_user as @sign_up_user" do
        sign_up_user = SignUpUser.create! valid_attributes
        put :update, {:id => sign_up_user.to_param, :sign_up_user => valid_attributes}, valid_session
        assigns(:sign_up_user).should eq(sign_up_user)
      end

      it "redirects to the sign_up_user" do
        sign_up_user = SignUpUser.create! valid_attributes
        put :update, {:id => sign_up_user.to_param, :sign_up_user => valid_attributes}, valid_session
        response.should redirect_to(sign_up_user)
      end
    end

    describe "with invalid params" do
      it "assigns the sign_up_user as @sign_up_user" do
        sign_up_user = SignUpUser.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SignUpUser.any_instance.stub(:save).and_return(false)
        put :update, {:id => sign_up_user.to_param, :sign_up_user => {  }}, valid_session
        assigns(:sign_up_user).should eq(sign_up_user)
      end

      it "re-renders the 'edit' template" do
        sign_up_user = SignUpUser.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SignUpUser.any_instance.stub(:save).and_return(false)
        put :update, {:id => sign_up_user.to_param, :sign_up_user => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested sign_up_user" do
      sign_up_user = SignUpUser.create! valid_attributes
      expect {
        delete :destroy, {:id => sign_up_user.to_param}, valid_session
      }.to change(SignUpUser, :count).by(-1)
    end

    it "redirects to the sign_up_users list" do
      sign_up_user = SignUpUser.create! valid_attributes
      delete :destroy, {:id => sign_up_user.to_param}, valid_session
      response.should redirect_to(sign_up_users_url)
    end
  end

end
