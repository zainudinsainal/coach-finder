class Api::CoachesController < Api::ApiController
  before_action :set_coach, only: [:show, :edit, :update]

  def index
    @coaches = Coach.all
    render json: @coaches
  end

  def show
    render json: @coach
  end

  def new
    @coach = Coach.new
    render json: @coach
  end

  def create
    p params
    @coach = Coach.new(coach_params)

    if @coach.save
      render json: @coach, status: :ok
    else
      render json: @coach, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @coach.update(coach_params)
      render json: @coach, status: :ok
    else
      render json: @coach, status: :unprocessable_entity
    end
  end

  private

  def set_coach
    @coach = Coach.find(params[:id])
  end

  def coach_params
    params.require(:coach).permit(:id, :first_name, :last_name, :description, :hourly_rate, areas:[])
  end
end
