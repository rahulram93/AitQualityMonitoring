module ApplicationHelper
  def timestamp(datetime)
    time =DateTime.now.to_i - datetime.to_datetime.to_i
    if time < 60
      "a few seconds ago"
    elsif time < 600
      "a few minutes ago"
    else
      datetime.to_datetime.strftime("%I:%M %p")
    end
  end

  def font_color(aqi)
    air_quality = AirQualityIndex.where("? between start_index and end_index", aqi).first
    air_quality.try(:color) || "#000000"
  end

end
