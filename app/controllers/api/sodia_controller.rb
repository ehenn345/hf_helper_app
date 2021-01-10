class Api::SodiaController < ApplicationController
  before_action :authenticate_user

  def index
    p "current user"
    p current_user
    @sodia = current_user.sodia.where({date: params[:date]})
    @date = params[:date]
    
    
    render 'index.json.jb'
  end

  def create
    if params[:quantity].present? && params[:measure].present? && params[:food].present? 
      response = HTTP.get("https://api.edamam.com/api/nutrition-data?app_id=#{Rails.application.credentials.edamam_id[:key_id]}&app_key=#{Rails.application.credentials.edamam_api[:api_key]}&ingr=#{params[:quantity]}%20#{params[:measure]}%20#{params[:food]}")
      nutrition_data = response.parse
      sodium_value = nutrition_data["totalNutrients"]["NA"]["quantity"] 
    else
      sodium_value = nil
    end
    @sodium = Sodium.new(
      user_id: current_user.id,
      input_sodium: sodium_value || params[:input_sodium],
      date: params[:date]
      )
    @sodium.save
    render 'show.json.jb'
  end
end

