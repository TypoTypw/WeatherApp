import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
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
                  Text(
                    'JOHANNESBURG',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 35,
                      fontFamily: 'PLANM___',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Monday 13 Feb 2023',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 20,
                      fontFamily: 'PLANM___',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset('assets/weather/01d.png'),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Sunny',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'PLANM___',
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  const Text(
                    '35°C / 122°F',
                    style: TextStyle(
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
                            const Text(
                              '15 KM/H',
                              style: TextStyle(
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
                            const Text(
                              'South-East',
                              style: TextStyle(
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
                            const Text(
                              '59%',
                              style: TextStyle(
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
                      const Text(
                        '32.0 KP/H',
                        style: TextStyle(
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
                      const Text(
                        '1025.0 HPA',
                        style: TextStyle(
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
                      const Text(
                        '1.0',
                        style: TextStyle(
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
                      const Text(
                        '19%',
                        style: TextStyle(
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
      ),
    );
  }
}
