require 'date'

class ResultsFacade
  def initialize(data)
    @location = data["location"]
    @weather = data["weather"]
    binding.pry
  end

  def location
    @location['address']
  end

  def weather_summary
    @weather['currently']['summary']
  end

  def current_temp
    @weather['currently']['summary']
  end

  def current_weather_icon
    @weather['currently']['icon']
  end

  def current_temp
    @weather['currently']['temperature']
  end

  def day_of_the_week
    #need a conversion
    # DateTime.strptime(@weather['currently']['time'].to_s,'%s')
    @weather['currently']['time']
  end

  def todays_high
    @weather['daily']['data'][0]['temperatureHigh']
  end

  def todays_low
    @weather['daily']['data'][0]['temperatureLow']
  end

  def now
    @weather['currently']
  end

  # def
  #   @weather['currently']
  # end

  # <div class="in-one-hour">in one hour</div>
  # <div class="in-two-hours">in two hours</div>
  # <div class="in-three-hours">in three hours</div>
  # <div class="in-four-hours">in four hours</div>
  # <div class="in-five-hours">in five hours</div>
  # <div class="in-six-hours">in six hours</div>




  # <div class="in-one-day">
  #   <div class="day-contents"class="day-of-the-week-1">Thirsday</div>
  #   <div class="day-contents"class="days-icon-1">Happy Face</div>
  #   <div class="day-contents"class="days-high-1">98&deg;</div>
  #   <div class="day-contents"class="days-low-1">-100&deg;</div>
  # </div>
  # <div class="in-two-days">
  #   <div class="day-contents"class="day-of-the-week-2">Thirsday</div>
  #   <div class="day-contents"class="days-icon-2">Happy Day</div>
  #   <div class="day-contents"class="days-high-2">98&deg;</div>
  #   <div class="day-contents"class="days-low-2">-100&deg;</div>
  # </div>
  # <div class="in-three-days">
  #   <div class="day-contents"class="day-of-the-week-3">Thirsday</div>
  #   <div class="day-contents"class="days-icon-3">Happy Day</div>
  #   <div class="day-contents"class="days-high-3">98&deg;</div>
  #   <div class="day-contents"class="days-low-3">-100&deg;</div>
  # </div>
  # <div class="in-four-days">
  #   <div class="day-contents"class="day-of-the-week-4">Thirsday</div>
  #   <div class="day-contents"class="days-icon-4">Happy Day</div>
  #   <div class="day-contents"class="days-high-4">98&deg;</div>
  #   <div class="day-contents"class="days-low-4">-100&deg;</div>
  # </div>
  # <div class="in-five-days">
  #   <div class="day-contents"class="day-of-the-week-5">Thirsday</div>
  #   <div class="day-contents"class="days-icon-5">Happy Day</div>
  #   <div class="day-contents"class="days-high-5">98&deg;</div>
  #   <div class="day-contents"class="days-low-5">-100&deg;</div>
  # </div>
  # <div class="in-six-days">
  #   <div class="day-contents"class="day-of-the-week-6">Thirsday</div>
  #   <div class="day-contents"class="days-icon-6">Happy Day</div>
  #   <div class="day-contents"class="days-high-6">98&deg;</div>
  #   <div class="day-contents"class="days-low-6">-100&deg;</div>
  # </div>
  # <div class="in-seven-days">
  #   <div class="day-contents"class="day-of-the-week-7">Thirsday</div>
  #   <div class="day-contents"class="days-icon-7">Happy Day</div>
  #   <div class="day-contents"class="days-high-7">98&deg;</div>
  #   <div class="day-contents"class="days-low-7">-100&deg;</div>
  # </div>
  # <div class="in-eight-days">
  #   <div class="day-contents"class="day-of-the-week-8">Thirsday</div>
  #   <div class="day-contents"class="days-icon-8">Happy Day</div>
  #   <div class="day-contents"class="days-high-8">98&deg;</div>
  #   <div class="day-contents"class="days-low-8">-100&deg;</div>
  # </div>
  # <div class="in-nine-days">
  #   <div class="day-contents"class="day-of-the-week-9">Thirsday</div>
  #   <div class="day-contents"class="days-icon-9">Happy Day</div>
  #   <div class="day-contents"class="days-high-9">98&deg;</div>
  #   <div class="day-contents"class="days-low-9">-100&deg;</div>
  # </div>
  # <div class="in-ten-days">
  #   <div class="day-contents"class="day-of-the-week-10">Thirsday</div>
  #   <div class="day-contents"class="days-icon-10">Happy Day</div>
  #   <div class="day-contents"class="days-high-10">98&deg;</div>
  #   <div class="day-contents"class="days-low-10">-100&deg;</div>
  # </div>
end