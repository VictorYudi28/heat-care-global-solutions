import 'package:flutter/material.dart';
import 'package:heat_care_project/weather_forecast_data.dart';

import 'home_page.dart';

class Forecast extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ForecastState();
  }
}

class ForecastState extends State<Forecast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF94D4FF),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TitlePrin(titleCont: "Previsão"),
            ForecastContainer(),
            Padding(padding: const EdgeInsets.only(top: 50.0)),
            ButtonApp(
              textButton: "VER DETALHES",
              rota: WeatherForecastData(),
              colorEx: 0xFF0F3559,
            ),
          ],
        ),
      ),
    );
  }
}

class ForecastContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white, // cor deve ficar aqui dentro!
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // <-- aqui!
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/sun.png', width: 100, height: 100),
                    Text(
                      "36º",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'São Paulo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Ensolarado',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TitlePrin extends StatefulWidget {
  final String titleCont;

  const TitlePrin({super.key, required this.titleCont});

  @override
  State<StatefulWidget> createState() {
    return TitlePrinState();
  }
}

class TitlePrinState extends State<TitlePrin> {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Text(
        widget.titleCont,
        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
