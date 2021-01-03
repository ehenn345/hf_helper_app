class Api::WeightsController < ApplicationController
  before_action :authenticate_user
  def index
    p "current user"
    p current_user
    p "/current_user"
    @weights = current_user.weights.order(date: :desc).limit(7)

    if current_user
      render 'index.json.jb'
    else
      render json: []
    end
  end

  def create
    @weight = Weight.new(
      user_id: current_user.id,
      current_weight: params[:current_weight],
      date: params[:date],
    )
    @weight.save 
    render 'show.json.jb'
  end
end
  
  
  

