import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Model/weatherModel.dart';
import 'weatherData.dart';
import 'locationProvider.dart';

var now = DateTime.now();
var formattedDate = DateFormat('EEEE MMM dd yyyy hh:mm:ss').format(now);

class HomeScreen extends StatelessWidget {
  var weather = WeatherData();
  var data;

  getCurrentWeather() async {
    // var position = await getDeviceLocation();
    data = await weather.getWeatherData('-26.2', '28.08');
    return data;
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: FutureBuilder(
        future: getCurrentWeather(),
        builder: ((context, snapshot) {
          return Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    right: 5,
                    left: 5,
                  ),
                  padding: const EdgeInsets.only(top: 40),
                  height: screenSize.height * 0.75,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 107, 27, 116),
                        Color.fromARGB(255, 53, 20, 151),
                        Color.fromARGB(200, 87, 108, 194),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      stops: [0.1, 0.5, 0.95],
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        '${data?.city}',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 45,
                          fontFamily: 'PLANM___',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        formattedDate,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 20,
                          fontFamily: 'PLANM___',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.network('https:${data?.image}'),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${data?.condition}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'PLANM___',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${data?.temperatureC}°C / ${data?.temperatureF}°F',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontFamily: 'PLANM___',
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/icons/windspeed.png',
                                  width: screenSize.width * 0.15,
                                ),
                                Text(
                                  '${data?.wind} KM/H',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Eavm',
                                  ),
                                ),
                                Text(
                                  'WIND SPEED',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 10,
                                    fontFamily: 'Eavm',
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/icons/windpole.png',
                                  width: screenSize.width * 0.15,
                                ),
                                Text(
                                  '${data?.windDirection}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Eavm',
                                  ),
                                ),
                                Text(
                                  'WIND DIRECTION',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 9,
                                    fontFamily: 'Eavm',
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/icons/humidity.png',
                                  width: screenSize.width * 0.15,
                                ),
                                Text(
                                  '${data?.humidity}%',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Eavm',
                                  ),
                                ),
                                Text(
                                  'HUMIDITY',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 10,
                                    fontFamily: 'Eavm',
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Gust',
                            style: TextStyle(
                              color: Colors.orangeAccent.withOpacity(0.6),
                              fontSize: 15,
                              fontFamily: 'PLANM___',
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${data?.gust} KP/H',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Eavm',
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Pressure',
                            style: TextStyle(
                              color: Colors.orangeAccent.withOpacity(0.6),
                              fontSize: 15,
                              fontFamily: 'PLANM___',
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${data?.pressure} MB',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Eavm',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'UV',
                            style: TextStyle(
                              color: Colors.orangeAccent.withOpacity(0.6),
                              fontSize: 15,
                              fontFamily: 'PLANM___',
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${data?.uv}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Eavm',
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Precipitation',
                            style: TextStyle(
                              color: Colors.orangeAccent.withOpacity(0.6),
                              fontSize: 15,
                              fontFamily: 'PLANM___',
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${data?.percipitation}%',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Eavm',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
