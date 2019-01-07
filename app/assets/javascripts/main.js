
// button formatting
$("button").each(function () {
  $(this).css("cursor", "pointer");
});

const

const setClothing = () => {
  // $('.clothing_headwear').empty();
  // $('.clothing_top').empty();
  // $('.clothing_bottom').empty();
  // $('.clothing_accessories').empty();
  if ( $(".current-weather-icon").is('clear-day')) {
    $('.current-weather-icon').append(`<%= image_tag "weather_assets/clear-day.png" %>`);
  } else if ($(".current-weather-icon").is('clear-night')) {

  } else if ($(".current-weather-icon").is('rain')) {

  } else if ($(".current-weather-icon").is('snow')) {

  } else if ($(".current-weather-icon").is('sleet')) {

  } else if ($(".current-weather-icon").is('wind')) {

  } else if ($(".current-weather-icon").is('fog')) {

  } else if ($(".current-weather-icon").is('cloudy')) {

  } else if ($(".current-weather-icon").is('partly-cloudy-day')) {

  } else if ($(".current-weather-icon").is('partly-cloudy-night')) {

  }
  // $('.current-weather-icon').append(`<p>${@results.["currently"]["icon"]}</p>`);
  // $('.current-weather-icon').append(`<h3>${weather["currently"]["summary"]}</h3>`);
  // $('.current-weather-icon').append(`<h3>${weather["currently"]["summary"]}</h3>`);
  // $('.current-weather-icon').append(`<h3>${weather["currently"]["summary"]}</h3>`);
}