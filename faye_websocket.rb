require 'faye/websocket'
require 'eventmachine'

EM.run {
  ws = Faye::WebSocket::Client.new("ws://city-ws.herokuapp.com/")
  ws.on :open { |event| Rails.logger.info(:open) }
  ws.on :message do |event| 
    
    city_data = JSON.parse(event.data)
    cities = city_data.map { |city| city['city'] }
    city_map  = {}
    AirQualityCity.where(:city => cities).group(:city).pluck(:city, "MAX(created_at)", "air_quality_index").each do |city, date, aqi|
      city_map[city] = aqi.to_f
    end

    city_data.select do |city|
      city["aqi"].to_f.round(2) != city["city"]
    end


    ActiveRecord::Base.connection.execute("INSERT INTO air_quality_cities
                                          (city, air_quality_index, created_at, updated_at)
                                          VALUES
                                          #{city_data.map {|city|  "('#{city["city"].gsub("'", "''")}', #{city["aqi"]}, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP )"}.join(",") }")
    
    p city_data
  end
  ws.on :close { |event| p :closed }


}
