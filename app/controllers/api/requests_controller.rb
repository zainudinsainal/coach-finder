class Api::RequestsController < Api::ApplicationController
  before_action :set_request, only: [:show, :edit, :update]

  def index
    @requests = Request.all
  end

  def show

  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)

    if @request.save
      render json: @request, status: :ok
    else
      render json: @request, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @request.update(request_params)
      render json: @request, status: :ok
    else
      render json: @request, status: :unprocessable_entity
    end
  end

  private

  def set_request
    @request = Request.find(params[:id])
  end

  def request_params
    params.require(:request).permit(:id, :email, :message, :coach_id)
  end
end
