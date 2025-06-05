import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heat_care_project/emergency.dart';
import 'package:heat_care_project/forecast_page.dart';
import 'package:heat_care_project/home_page.dart';

class RecordData extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RecordDataState();
  }
}

class RecordDataState extends State<RecordData>{

  bool buttonTrueFalse = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Registrar dados",style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF3B8DD7),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: TitlePrin(titleCont: "Descreva a ocorrência"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: TextField(
                maxLines: null, // Permite múltiplas linhas, o campo cresce conforme o conteúdo.
                minLines: 5,    // Define o número mínimo de linhas visíveis.
                decoration: InputDecoration(
                  border: OutlineInputBorder(),  // Adiciona borda.
                  labelText: 'Descrição', // Label.
                  hintText: 'Escreva algo aqui...',
                  alignLabelWithHint: true// Placeholder.
                ),
              ),
            ),
           Padding(padding: EdgeInsets.only(top: 20.0),
           child:  Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Text("Sem hidratação",
                 style: TextStyle(
                     fontSize: 22.0,
                   fontWeight: FontWeight.bold
                 ),
               ),
               Switch(value: buttonTrueFalse,
                   activeColor: Colors.white,
                   activeTrackColor: Colors.blue,
                   inactiveThumbColor: Colors.white,
                   inactiveTrackColor: Colors.red,
                   onChanged: (value){
                     setState(() {
                       buttonTrueFalse = !buttonTrueFalse;
                     });
                   }
               )
              ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Container(
                  width: double.infinity,
                  child:  Text("Selecionar condição",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
            ),
            MyDropdownWithBorder(),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: ButtonApp(textButton: "Enviar", rota: Emergency(), colorEx: 0xFF3B8DD7),
            ),
          ],

        )
      ),
    );
  }

}

class MyDropdownWithBorder extends StatefulWidget {
  @override
  _MyDropdownWithBorderState createState() => _MyDropdownWithBorderState();
}

class _MyDropdownWithBorderState extends State<MyDropdownWithBorder> {
  String? _selectedItem;  // sem valor inicial

  final List<String> _items = [
    'Estou mal',
    'Estou me sentindo cansado',
    'Sensação de cansaço ou fraqueza devido ao calor',
    'Náuseas ou mal-estar estomacal',
    'Tontura ou sensação de desmaio'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: DropdownButton<String>(
              value: _selectedItem,
              isExpanded: true,
              underline: SizedBox(),
              dropdownColor: Colors.white,
              items: _items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedItem = newValue;
                });
              },
              hint: Text('Selecione um item'),
            ),
          ),
        ),
      ),
    );
  }
}