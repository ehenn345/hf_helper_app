class Api::SodiaController < ApplicationController
  def index

    response = HTTP.get("https://api.edamam.com/api/nutrition-data?app_id=#{Rails.application.credentials.edamam_id[:key_id]}&app_key=#{Rails.application.credentials.edamam_api[:api_key]}&ingr=#{params[:quantity]}%20#{params[:measure]}%20#{params[:food]}").parse
    # response = HTTP.get("https://api.edamam.com/api/nutrition-data?app_id=#{Rails.application.credentials.edamam_id[:key_id]}&app_key=#{Rails.application.credentials.edamam_api[:api_key]}&ingr=1%20large%20apple").parse
    p response
    # p response["totalNutrients"]["NA"]["quantity"]
    sodium_value = response["totalNutrients"]["NA"]["quantity"]
    render json: {message: "the sodium value is #{sodium_value}mg"}
  end
end

