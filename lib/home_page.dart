import 'package:flutter/material.dart';

import 'forecast_page.dart';

class HomePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Center(child: Image.asset('assets/heatcarelogo.png')),
            ),
            ButtonApp(textButton: "Acessar aplicativo", rota: Forecast(), colorEx: 0xFF3B8DD7),
          ],
        ),
      ),
    );
  }
}

class ButtonApp extends StatefulWidget {
  final String textButton;
  final Widget rota;
  final int colorEx;

  const ButtonApp({Key? key, required this.textButton, required this.rota, required this.colorEx})
    : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ButtonAppState();
  }
}

class ButtonAppState extends State<ButtonApp> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => widget.rota));
      },
      style: ElevatedButton.styleFrom(backgroundColor: Color(widget.colorEx)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 12.0),
        child: Text(
          widget.textButton,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
