
// button formatting
$("button").each(function () {
  $(this).css("cursor", "pointer");
});

// $('.clothing_headwear').empty();
// $('.clothing_top').empty();
// $('.clothing_bottom').empty();
// $('.clothing_accessories').empty();

const setWeeklyForecast = () => {
  var i;
  for (i = 1; i < 8; i++) {
    //create div class
    $("weekly-forecast-main").append(`<div class="day-${i}"></div>`);
    $(`"day-${i}"`).append(`<div class="day-contents" class="day-of-the-week-${i}"><%= "#{@results.day_of_the_week(${i})}" %></div>`);
    $(`"day-${i}"`).append(`<div class="day-contents" class="days-icon-${i}"><%= "#{@results.icon_of_the_day(${i})}" %></div>`);
    $(`"day-${i}"`).append(`<div class="day-contents" class="days-high-${i}"><%= "#{@results.high_of_the_day(${i})}" %>&deg;</div>`);
    $(`"day-${i}"`).append(`<div class="day-contents" class="days-low-${i}"><%= "#{@results.low_of_the_day(${i})}" %>&deg;</div>`);
  };
}

const setWeather = (klass) => {
  if ( $(klass).is('clear-day')) {
    $(klass).append(`<%= image_tag "weather_assets/clear-day.png" %>`);
  } else if ($(klass).is('clear-night')) {
    $(klass).append(`<%= image_tag "weather_assets/clear-night.png" %>`);
  } else if ($(klass).is('rain')) {
    $(klass).append(`<%= image_tag "weather_assets/rain.png" %>`);
  } else if ($(klass).is('snow')) {
    $(klass).append(`<%= image_tag "weather_assets/snow.png" %>`);
  } else if ($(klass).is('sleet')) {
    $(klass).append(`<%= image_tag "weather_assets/sleet.png" %>`);
  } else if ($(klass).is('wind')) {
    $(klass).append(`<%= image_tag "weather_assets/wind.png" %>`);
  } else if ($(klass).is('fog')) {
    $(klass).append(`<%= image_tag "weather_assets/fog.png" %>`);
  } else if ($(klass).is('cloudy')) {
    $(klass).append(`<%= image_tag "weather_assets/cloudy.png" %>`);
  } else if ($(klass).is('partly-cloudy-day')) {
    $(klass).append(`<%= image_tag "weather_assets/partly-cloudy-day.png" %>`);
  } else if ($(klass).is('partly-cloudy-night')) {
    $(klass).append(`<%= image_tag "weather_assets/partly-cloudy-night.png" %>`);
  } else {
    $(klass).append(`<p> "No weather today" </p>`);
  }
}

const setWeatherIcons = () => {
  setCurrentWeather(".current-weather-icon");
}

setWeather(".current-weather-icon");

