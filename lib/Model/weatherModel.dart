class Weather {
  var city;
  var image;
  var condition;
  var temperatureC;
  var temperatureF;
  var wind;
  var humidity;
  var windDirection;
  var gust;
  var uv;
  var pressure;
  var percipitation;

  Weather(
      {required this.city,
      required this.image,
      required this.condition,
      required this.temperatureC,
      required this.temperatureF,
      required this.wind,
      required this.humidity,
      required this.windDirection,
      required this.gust,
      required this.uv,
      required this.pressure,
      required this.percipitation});

  Weather.fromJson(Map<String, dynamic> json) {
    city = json['location']['name'];
    image = json['current']['condition']['icon'];
    condition = json['current']['condition']['text'];
    temperatureC = json['current']['temp_c'];
    temperatureF = json['current']['temp_f'];
    wind = json['current']['wind_kph'];
    windDirection = json['current']['wind_dir'];
    pressure = json['current']['pressure_mb'];
    percipitation = json['current']['precip_mm'];
    uv = json['current']['uv'];
    gust = json['current']['gust_kph'];
    humidity = json['current']['humidity'];
  }
}
