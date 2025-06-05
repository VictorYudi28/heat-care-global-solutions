import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heat_care_project/forecast_page.dart';

import 'home_page.dart';

class Emergency extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EmergencyState();
  }
}

class EmergencyState extends State<Emergency>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Acionar emergência",style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: TitlePrin(titleCont: "Deseja ligar para serviços de emergência ?"),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Center(
                    child: Image.asset('assets/telephone.png',width: 200,height: 200,),
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).push(MaterialPageRoute(builder: (context) => Forecast()));
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Color(200)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 12.0),
                      child: Text(
                        "Cancelar",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ),
              )
            ],
          ),
        )
        
      );
  }

}


