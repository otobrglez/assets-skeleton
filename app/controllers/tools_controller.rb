class ToolsController < ApplicationController
  respond_to :json

  before_filter :add_cors_headers

  def add_cors_headers
    headers["Access-Control-Allow-Origin"]  = "*"
    headers["Access-Control-Allow-Methods"] = %w{GET POST PUT DELETE}.join(",")
    headers["Access-Control-Allow-Headers"] = %w{Origin Accept Content-Type X-Requested-With X-CSRF-Token}.join(",")
    head(:ok) if request.request_method == "OPTIONS"
  end

  def index
    @tools = Tool.all
    respond_with @tools
  end

  def show
    @tool = Tool.find(params[:id])
    respond_with @tool
  end

  def create
    @tool = Tool.create(params[:tool])
    respond_with @tool
  end

  def update
    @tool = Tool.update(params[:id],params[:tool])
    respond_with @tool
  end

  def destroy
    @tool = Tool.find(params[:id])
    @tool.destroy
    head :ok
  end
end
