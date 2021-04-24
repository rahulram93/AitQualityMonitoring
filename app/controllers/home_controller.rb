class HomeController < ApplicationController
  def index
    @air_quality_cities = AirQualityCity.group(:city).pluck(:city, "MAX(created_at)", "air_quality_index")
  end
end
