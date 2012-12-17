require 'spec_helper'

describe ToolsController do
  render_views

  def valid_attributes
    (build :rails).attributes
  end

  def valid_session
    {}
  end

  describe "CORS headers" do
    subject { get :index, {}, valid_session }
    its("headers.keys") { should include "Access-Control-Allow-Origin" }
  end

  describe "GET index" do
    it "assigns all tools as @tools" do
      tool = Tool.create! valid_attributes
      get :index, {}, valid_session
      assigns(:tools).should eq([tool])
    end
  end

  describe "GET show" do
    it "assigns the requested tool as @tool" do
      tool = Tool.create! valid_attributes
      get :show, {:id => tool.to_param}, valid_session
      assigns(:tool).should eq(tool)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Tool" do
        expect {
          post :create, {:tool => valid_attributes}, valid_session
        }.to change(Tool, :count).by(1)
      end

      it "assigns a newly created tool as @tool" do
        post :create, {:tool => valid_attributes}, valid_session
        assigns(:tool).should be_a(Tool)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tool as @tool" do
        # Trigger the behavior that occurs when invalid params are submitted
        Tool.any_instance.stub(:save).and_return(false)
        post :create, {:tool => {  }}, valid_session
        assigns(:tool).should be_a_new(Tool)
      end

      it "cry" do
        # Trigger the behavior that occurs when invalid params are submitted
        Tool.any_instance.stub(:save).and_return(false)
        post :create, {:tool => {  }}, valid_session
        response.status.should_not eq 200
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested tool" do
        tool = Tool.create! valid_attributes
        Tool.any_instance.should_receive(:update_attributes).with({ "name" => "xxx" })
        put :update, {:id => tool.to_param, :tool => { "name" => "xxx" }}, valid_session
      end

      it "assigns the requested tool as @tool" do
        tool = Tool.create! valid_attributes
        put :update, {:id => tool.to_param, :tool => valid_attributes}, valid_session
        assigns(:tool).should eq(tool)
      end
    end

    describe "with invalid params" do
      it "assigns the tool as @tool" do
        tool = Tool.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Tool.any_instance.stub(:save).and_return(false)
        put :update, {:id => tool.to_param, :tool => {  }}, valid_session
        assigns(:tool).should eq(tool)
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tool" do
      tool = Tool.create! valid_attributes
      expect {
        delete :destroy, {:id => tool.to_param}, valid_session
      }.to change(Tool, :count).by(-1)
    end

    it "redirects to the tools list" do
      tool = Tool.create! valid_attributes
      delete :destroy, {:id => tool.to_param}, valid_session
      response.should redirect_to(tools_url)
    end
  end

end
