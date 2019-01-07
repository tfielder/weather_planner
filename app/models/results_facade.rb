require 'date'

class ResultsFacade
  def initialize(data)
    @location = data["location"]
    @weather = data["weather"]
    @days_of_week = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday']
  end

  def location
    @location['address']
  end

  def weather_summary
    @weather['currently']['summary']
  end

  def current_temp
    @weather['currently']['summary'].to_s
  end

  def current_weather_icon
    @weather['currently']['icon']
  end

  def current_temp
    @weather['currently']['temperature'].to_s
  end

  def day_of_the_week
    index = DateTime.strptime(@weather['currently']['time'], '%s').wday
    @days_of_week[index]
  end

  def todays_high
    @weather['daily']['data'][0]['temperatureHigh'].to_s
  end

  def todays_low
    @weather['daily']['data'][0]['temperatureLow'].to_s
  end

  def in_x_hours(index)
    @weather['hourly']['data'][index]['summary']
  end

  def day_of_the_week(day)
    index = DateTime.strptime(@weather['daily']['data'][day]['time'].to_s, '%s').wday
    @days_of_week[index]
  end

  def icon_of_the_day(day)
    @weather['daily']['data'][day]['summary']
  end

  def high_of_the_day(day)
    @weather['daily']['data'][day]['temperatureHigh'].to_s
  end

  def low_of_the_day(day)
    @weather['daily']['data'][day]['temperatureLow'].to_s
  end

  def precip_of_the_day(day)
    @weather['daily']['data'][day]['precipIntensity']
  end

  def get_headwear
    temp = high_of_the_day(0).to_i
    return 'hat, gloves, scarf,' if temp <= 35
  end

  def get_top
    temp = high_of_the_day(0).to_i
    return 'coat,' if temp <= 35
    return 'sweater and jacket,' if (temp <= 65) && (temp > 35)
    return 'shirt,' if temp > 65
  end

  def get_bottom
    temp = high_of_the_day(0).to_i
    return 'and pants' if temp <= 65
    return 'and shorts' if temp > 65
  end

  def get_accessories
    precip = precip_of_the_day(0).to_i
    return 'and bring an umbrella' if precip > 0
  end

end