class Api::SodiaController < ApplicationController
  before_action :authenticate_user

  def index
    p "current user"
    p current_user
    @sodia = current_user.sodia.all
    sodiums_for_day = current_user.sodia.where({date: "2020-12-01"})
    p sodiums_for_day
    total_sodium_for_day = 0
    sodiums_for_day.each do |sodium_for_day|
      total_sodium_for_day += sodium_for_day[:input_sodium]
    end
    p "Total sodium"
    p total_sodium_for_day

    
    render 'index.json.jb'
    # response = HTTP.get("https://api.edamam.com/api/nutrition-data?app_id=#{Rails.application.credentials.edamam_id[:key_id]}&app_key=#{Rails.application.credentials.edamam_api[:api_key]}&ingr=#{params[:quantity]}%20#{params[:measure]}%20#{params[:food]}")
    # nutrition_data = response.parse
    # p response.parse
    # sodium_value = nutrition_data["totalNutrients"]["NA"]["quantity"]
    # render json: {message: "the sodium value is #{sodium_value}mg"}

  end

  def create
    @sodium = Sodium.new(
      user_id: current_user.id,
      input_sodium: params[:input_sodium],
      date: params[:date]
      )
    @sodium.save
    render 'show.json.jb'
  end
end

