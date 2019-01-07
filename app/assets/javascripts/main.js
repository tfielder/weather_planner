
// button formatting
$("button").each(function () {
  $(this).css("cursor", "pointer");
});

// $('.clothing_headwear').empty();
// $('.clothing_top').empty();
// $('.clothing_bottom').empty();
// $('.clothing_accessories').empty();

const setWeather = () => {
  if ( $(".current-weather-icon").is('clear-day')) {
    $('.current-weather-icon').append(`<%= image_tag "weather_assets/clear-day.png" %>`);
  } else if ($(".current-weather-icon").is('clear-night')) {
    $('.current-weather-icon').append(`<%= image_tag "weather_assets/clear-night.png" %>`);
  } else if ($(".current-weather-icon").is('rain')) {
    $('.current-weather-icon').append(`<%= image_tag "weather_assets/rain.png" %>`);
  } else if ($(".current-weather-icon").is('snow')) {
    $('.current-weather-icon').append(`<%= image_tag "weather_assets/snow.png" %>`);
  } else if ($(".current-weather-icon").is('sleet')) {
    $('.current-weather-icon').append(`<%= image_tag "weather_assets/sleet.png" %>`);
  } else if ($(".current-weather-icon").is('wind')) {
    $('.current-weather-icon').append(`<%= image_tag "weather_assets/wind.png" %>`);
  } else if ($(".current-weather-icon").is('fog')) {
    $('.current-weather-icon').append(`<%= image_tag "weather_assets/fog.png" %>`);
  } else if ($(".current-weather-icon").is('cloudy')) {
    $('.current-weather-icon').append(`<%= image_tag "weather_assets/cloudy.png" %>`);
  } else if ($(".current-weather-icon").is('partly-cloudy-day')) {
    $('.current-weather-icon').append(`<%= image_tag "weather_assets/partly-cloudy-day.png" %>`);
  } else if ($(".current-weather-icon").is('partly-cloudy-night')) {
    $('.current-weather-icon').append(`<%= image_tag "weather_assets/partly-cloudy-night.png" %>`);
  } else {
    $('.current-weather-icon').append(`<p> "No weather today" </p>`);
  }
}