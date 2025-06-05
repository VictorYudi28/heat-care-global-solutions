import 'package:flutter/material.dart';
import 'package:heat_care_project/record_data.dart';

import 'forecast_page.dart';
import 'home_page.dart';

class WeatherForecastData extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WeatherForecastDataState();
  }
}

class WeatherForecastDataState extends State<WeatherForecastData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: TitlePrin(titleCont: "Previsão do Tempo"),
            ),
            MainCont(),
            Container(
              padding: EdgeInsets.only(top: 30.0),
              width: double.infinity,
              child: Text(
                "Cuidados durante a onda de calor",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3B8DD7),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0),
              width: double.infinity,
              child: Row(
                children: [
                  Image.asset('assets/drop.png', width: 30, height: 30),
                  Text(
                    "Beba bastante água",
                    style: TextStyle(
                      fontSize: 20.0, // ✅ Aqui é fontSize
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              child: Row(
                children: [
                  Image.asset('assets/block.png', width: 25, height: 25),
                  Padding(
                    padding: EdgeInsets.only(left: 9.0),
                    child: Text(
                      "Evite exposição ao sol",
                      style: TextStyle(
                        fontSize: 20.0, // ✅ Aqui é fontSize
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              child: Row(
                children: [
                  Image.asset('assets/tshirt.png', width: 25, height: 25),
                  Padding(
                    padding: EdgeInsets.only(left: 9.0),
                    child: Text(
                      "Use roupas leves",
                      style: TextStyle(
                        fontSize: 20.0, // ✅ Aqui é fontSize
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              child: Row(
                children: [
                  Image.asset('assets/sofa.png', width: 25, height: 25),
                  Padding(
                    padding: EdgeInsets.only(left: 9.0),
                    child: Text(
                      "Descanse em locais frescos",
                      style: TextStyle(
                        fontSize: 20.0, // ✅ Aqui é fontSize
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: ButtonApp(
                textButton: 'Registrar dados',
                rota: RecordData(),
                colorEx: 0xFF3B8DD7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainCont extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MainContState();
  }
}

class MainContState extends State<MainCont> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "São Paulo",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Text(
                "Risco de onda de Calor",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFA8341),
                ),
              ),
            ],
          ),

          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFFFA8341),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '39º',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Suggestions extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SuggestionsState();
  }
}

class SuggestionsState extends State<Suggestions> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("ddd"));
  }
}
