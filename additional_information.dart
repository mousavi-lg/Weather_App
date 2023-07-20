import 'package:flutter/material.dart';

Widget additional_information(
    String wind, String humidity, String pressure, String feels_like) {
  TextStyle titleFont = TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);
  TextStyle infoFont = TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0);
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wind',
                  style: titleFont,
                ),
                SizedBox(height: 18.0),
                Text(
                  'Pressure',
                  style: titleFont,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$wind',
                  style: infoFont,
                ),
                SizedBox(height: 18.0),
                Text(
                  '$pressure',
                  style: infoFont,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Humidity',
                  style: titleFont,
                ),
                SizedBox(height: 18.0),
                Text(
                  'Feels Like',
                  style: titleFont,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$humidity',
                  style: infoFont,
                ),
                SizedBox(height: 18.0),
                Text(
                  '$feels_like',
                  style: infoFont,
                )
              ],
            ),
          ],
        )
      ],
    ),
  );
}
