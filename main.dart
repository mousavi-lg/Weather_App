import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:weather_app/additional_information.dart';
import 'package:weather_app/today_weather.dart';
import 'package:weather_app/weather_api.dart';
import 'package:weather_app/weather_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Weather Of Today',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     home: const HomePage(),
  //   );
  // }
}

class _HomePageState extends State<HomePage> {
  WeatherApi client = WeatherApi();
  @override
  void initState() {
    super.initState();
    client.getCurrentWeather("Georgia");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf9f9f9),
      appBar: AppBar(
        backgroundColor: Color(0xFFf9f9f9),
        elevation: 0.0,
        title: const Text(
          'Weather App',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //   todayweather(Icons.sunny, '34.0', 'Qom'),
          SizedBox(
            height: 60.0,
          ),
          Text(
            'Additional information',
            style: TextStyle(
                fontSize: 24.0,
                color: Color(0xdd212121),
                fontWeight: FontWeight.bold),
          ),
          Divider(),
          SizedBox(
            height: 20.0,
          ),
          additional_information('24', '2', '1014', '24.6'),
          // Container(
          //   alignment: Alignment.center,
          //   margin: EdgeInsets.all(40),
          //   child: const Text(
          //     'Qom',
          //     style: TextStyle(
          //       fontSize: 40,
          //       color: Colors.blueAccent,
          //       fontWeight: FontWeight.bold,
          //       // fontFamily: AutofillHints.countryName,
          //     ),
          //   ),
          // ),
          // Container(
          //   child: const Text(
          //     '${38}',
          //     style: TextStyle(
          //       fontSize: 30,
          //       color: Colors.green,
          //     ),
          //   ),
          //   margin: EdgeInsets.only(bottom: 50),
          // ),
          // Container(
          //   child: const Icon(
          //     Icons.sunny,
          //     size: 40.0,
          //     color: Colors.yellow,
          //   ),
          //   margin: EdgeInsets.only(bottom: 30),
          // ),
          // Container(
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Text('lowest: 27 '),
          //       Text('Highest: 38'),
          //     ],
          //   ),
          //   margin: EdgeInsets.only(bottom: 10),
          // ),
        ],
      ),
    );
  }
}
