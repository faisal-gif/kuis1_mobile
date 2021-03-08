import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  List<String> listItemLaki = [
    "Senin",
    "Selasa",
    "Rabu",
    "Kamis",
    "Jumat",
    "Sabtu",
    "Minggu"
  ];
  List<String> listWetonLaki = [
    "Legi",
    "Pahing",
    "Pon",
    "Wage",
    "Kliwon",
  ];
  String _newValueLaki = "Senin";
  String _newWetonLaki = "Legi";
  List<String> listItemPerem = [
    "Senin",
    "Selasa",
    "Rabu",
    "Kamis",
    "Jumat",
    "Sabtu",
    "Minggu"
  ];
  List<String> listWetonPerem = [
    "Legi",
    "Pahing",
    "Pon",
    "Wage",
    "Kliwon",
  ];
  String _newValuePerem = "Senin";
  String _newWetonPerem = "Legi";
  void perhitunganSuhu() {}

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text("Perhitungan Kecocokan Weton"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(children: <Widget>[
                    Container(
                      child: Text('Masukan hari lahir calon suami'),
                      margin: EdgeInsets.only(top: 10),
                    ),
                    Row(children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: DropdownButton<String>(
                          items: listItemLaki.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          value: _newValueLaki,
                          onChanged: (String changeValue) {
                            setState(() {
                              _newValueLaki = changeValue;
                              perhitunganSuhu();
                            });
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: DropdownButton<String>(
                          items: listWetonLaki.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          value: _newWetonLaki,
                          onChanged: (String changeValue) {
                            setState(() {
                              _newWetonLaki = changeValue;
                              perhitunganSuhu();
                            });
                          },
                        ),
                      ),
                    ]),
                  ]),
                  Column(children: <Widget>[
                    Container(
                      child: Text('Masukan hari lahir calon Istri'),
                      margin: EdgeInsets.only(top: 10),
                    ),
                    Row(children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: DropdownButton<String>(
                          items: listItemPerem.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          value: _newValuePerem,
                          onChanged: (String changeValue) {
                            setState(() {
                              _newValuePerem = changeValue;
                              perhitunganSuhu();
                            });
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: DropdownButton<String>(
                          items: listWetonPerem.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          value: _newWetonPerem,
                          onChanged: (String changeValue) {
                            setState(() {
                              _newWetonPerem = changeValue;
                              perhitunganSuhu();
                            });
                          },
                        ),
                      ),
                    ]),
                  ]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 50, 0),
                        child: Text("Hasil Kecocokan"),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 50, 0),
                        child: Text(
                          "#",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                
                child: new RaisedButton(
                  child: new Text("Hitung",
                      style: new TextStyle(
                        color: Colors.white,
                        
                      )),
                  colorBrightness: Brightness.dark,
                  
                  onPressed: () {
                    setState(() {
                      perhitunganSuhu();
                    });
                  },
                  color: Colors.brown,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
