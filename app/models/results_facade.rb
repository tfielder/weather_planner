require 'date'

class ResultsFacade
  def initialize(data)
    @location = data["location"]
    @weather = data["weather"]
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
    #need a conversion
    # DateTime.strptime(@weather['currently']['time'].to_s,'%s')
    #currently time 1546830790 (to the minute)
    #hourly time 1546830000 (top of the hour)
    #daily time 1546758000 (top of the day)
    # DateTime.new(@weather['currently']['time']).in_time_zone(@weather['timezone'])
    @weather['currently']['time']
  end

  def todays_high
    @weather['daily']['data'][0]['temperatureHigh'].to_s
  end

  def todays_low
    @weather['daily']['data'][0]['temperatureLow'].to_s
  end

  def now
    #@weather['currently']
  end

  # def
  #   @weather['currently']
  # end

  def in_x_hours(index)
    @weather['hourly']['data'][index]['summary']
  end

  def day_of_the_week(day)
    @weather['daily']['data'][day]['time']
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

  private

  def convert_unix_to_datetime(unix)

  end

end