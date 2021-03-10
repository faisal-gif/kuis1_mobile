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
  List<int> listPegat = [1,9,10,18,19,27,28,36];
  List<int> listRatu = [2,11,20,29];
  List<int> listJodoh = [3,12,21,30];
  List<int> listTopo = [4,13,22,31];
  List<int> listTinari = [5,14,23,32];
  List<int> listPadu = [6,15,24,33];
  List<int> listSujanan = [7,16,25,34];
  String _hasil=" ";
  String _keterangan = " ";
  String _newValuePerem = "Senin";
  String _newWetonPerem = "Legi";
  int _hitungWetonL = 0;
  int _hitungWetonP = 0;
  int _hitungCocok = 0;
  void perhitunganL() {
    if (_newWetonLaki == "Legi") {
      _hitungWetonL = 5;
      if (_newValueLaki == "Minggu")
        _hitungWetonL = _hitungWetonL + 5;
      else if (_newValueLaki == "Senin")
        _hitungWetonL = _hitungWetonL + 4;
      else if (_newValueLaki == "Selasa")
        _hitungWetonL = _hitungWetonL + 3;
      else if (_newValueLaki == "Rabu")
        _hitungWetonL = _hitungWetonL + 7;
      else if (_newValueLaki == "Kamis")
        _hitungWetonL = _hitungWetonL + 8;
      else if (_newValueLaki == "Jumat")
        _hitungWetonL = _hitungWetonL + 6;
      else
        _hitungWetonL = _hitungWetonL + 9;
    } else if (_newWetonLaki == "Pahing") {
      _hitungWetonL = 9;
      if (_newValueLaki == "Minggu")
        _hitungWetonL = _hitungWetonL + 5;
      else if (_newValueLaki == "Senin")
        _hitungWetonL = _hitungWetonL + 4;
      else if (_newValueLaki == "Selasa")
        _hitungWetonL = _hitungWetonL + 3;
      else if (_newValueLaki == "Rabu")
        _hitungWetonL = _hitungWetonL + 7;
      else if (_newValueLaki == "Kamis")
        _hitungWetonL = _hitungWetonL + 8;
      else if (_newValueLaki == "Jumat")
        _hitungWetonL = _hitungWetonL + 6;
      else
        _hitungWetonL = _hitungWetonL + 9;
    } else if (_newWetonLaki == "Pon") {
      _hitungWetonL = 7;
      if (_newValueLaki == "Minggu")
        _hitungWetonL = _hitungWetonL + 5;
      else if (_newValueLaki == "Senin")
        _hitungWetonL = _hitungWetonL + 4;
      else if (_newValueLaki == "Selasa")
        _hitungWetonL = _hitungWetonL + 3;
      else if (_newValueLaki == "Rabu")
        _hitungWetonL = _hitungWetonL + 7;
      else if (_newValueLaki == "Kamis")
        _hitungWetonL = _hitungWetonL + 8;
      else if (_newValueLaki == "Jumat")
        _hitungWetonL = _hitungWetonL + 6;
      else
        _hitungWetonL = _hitungWetonL + 9;
    } else if (_newWetonLaki == "Wage") {
      _hitungWetonL = 4;
      if (_newValueLaki == "Minggu")
        _hitungWetonL = _hitungWetonL + 5;
      else if (_newValueLaki == "Senin")
        _hitungWetonL = _hitungWetonL + 4;
      else if (_newValueLaki == "Selasa")
        _hitungWetonL = _hitungWetonL + 3;
      else if (_newValueLaki == "Rabu")
        _hitungWetonL = _hitungWetonL + 7;
      else if (_newValueLaki == "Kamis")
        _hitungWetonL = _hitungWetonL + 8;
      else if (_newValueLaki == "Jumat")
        _hitungWetonL = _hitungWetonL + 6;
      else
        _hitungWetonL = _hitungWetonL + 9;
    } else {
      _hitungWetonL = 8;
      if (_newValueLaki == "Minggu")
        _hitungWetonL = _hitungWetonL + 5;
      else if (_newValueLaki == "Senin")
        _hitungWetonL = _hitungWetonL + 4;
      else if (_newValueLaki == "Selasa")
        _hitungWetonL = _hitungWetonL + 3;
      else if (_newValueLaki == "Rabu")
        _hitungWetonL = _hitungWetonL + 7;
      else if (_newValueLaki == "Kamis")
        _hitungWetonL = _hitungWetonL + 8;
      else if (_newValueLaki == "Jumat")
        _hitungWetonL = _hitungWetonL + 6;
      else
        _hitungWetonL = _hitungWetonL + 9;
    }
  }
 void perhitunganP() {
    if (_newWetonPerem == "Legi") {
      _hitungWetonP = 5;
      if (_newValuePerem == "Minggu")
        _hitungWetonP = _hitungWetonP + 5;
      else if (_newValuePerem == "Senin")
        _hitungWetonP = _hitungWetonP + 4;
      else if (_newValuePerem == "Selasa")
        _hitungWetonP = _hitungWetonP + 3;
      else if (_newValuePerem == "Rabu")
        _hitungWetonP = _hitungWetonP + 7;
      else if (_newValuePerem == "Kamis")
        _hitungWetonP = _hitungWetonP + 8;
      else if (_newValuePerem == "Jumat")
        _hitungWetonP = _hitungWetonP + 6;
      else
        _hitungWetonP = _hitungWetonP + 9;
    } else if (_newWetonPerem == "Pahing") {
      _hitungWetonP = 9;
      if (_newValuePerem == "Minggu")
        _hitungWetonP = _hitungWetonP + 5;
      else if (_newValuePerem == "Senin")
        _hitungWetonP = _hitungWetonP + 4;
      else if (_newValuePerem == "Selasa")
        _hitungWetonP = _hitungWetonP + 3;
      else if (_newValuePerem == "Rabu")
        _hitungWetonP = _hitungWetonP + 7;
      else if (_newValuePerem == "Kamis")
        _hitungWetonP = _hitungWetonP + 8;
      else if (_newValuePerem == "Jumat")
        _hitungWetonP = _hitungWetonP + 6;
      else
        _hitungWetonP = _hitungWetonP + 9;
    } else if (_newWetonPerem == "Pon") {
      _hitungWetonP = 7;
      if (_newValuePerem == "Minggu")
        _hitungWetonP = _hitungWetonP + 5;
      else if (_newValuePerem == "Senin")
        _hitungWetonP = _hitungWetonP + 4;
      else if (_newValuePerem == "Selasa")
        _hitungWetonP = _hitungWetonP + 3;
      else if (_newValuePerem == "Rabu")
        _hitungWetonP = _hitungWetonP + 7;
      else if (_newValuePerem == "Kamis")
        _hitungWetonP = _hitungWetonP + 8;
      else if (_newValuePerem == "Jumat")
        _hitungWetonP = _hitungWetonP + 6;
      else
        _hitungWetonP = _hitungWetonP + 9;
    } else if (_newWetonPerem == "Wage") {
      _hitungWetonP = 4;
      if (_newValuePerem == "Minggu")
        _hitungWetonP = _hitungWetonP + 5;
      else if (_newValuePerem == "Senin")
        _hitungWetonP = _hitungWetonP + 4;
      else if (_newValuePerem == "Selasa")
        _hitungWetonP = _hitungWetonP + 3;
      else if (_newValuePerem == "Rabu")
        _hitungWetonP = _hitungWetonP + 7;
      else if (_newValuePerem == "Kamis")
        _hitungWetonP = _hitungWetonP + 8;
      else if (_newValuePerem == "Jumat")
        _hitungWetonP = _hitungWetonP + 6;
      else
        _hitungWetonP = _hitungWetonP + 9;
    } else {
      _hitungWetonP = 8;
      if (_newValuePerem == "Minggu")
        _hitungWetonP = _hitungWetonP + 5;
      else if (_newValuePerem == "Senin")
        _hitungWetonP = _hitungWetonP + 4;
      else if (_newValuePerem == "Selasa")
        _hitungWetonP = _hitungWetonP + 3;
      else if (_newValuePerem == "Rabu")
        _hitungWetonP = _hitungWetonP + 7;
      else if (_newValuePerem == "Kamis")
        _hitungWetonP = _hitungWetonP + 8;
      else if (_newValuePerem == "Jumat")
        _hitungWetonP = _hitungWetonP + 6;
      else
        _hitungWetonP = _hitungWetonP + 9;
    }
  }

void perhitunganCocok(){
  perhitunganL();
  perhitunganP();
  _hitungCocok = _hitungWetonL +_hitungWetonP;
   
  if(listPegat.contains(_hitungCocok)){
  _hasil = "PEGAT";
  _keterangan = "Masalah yang sering ditemui oleh pasangan PEGAT ini di kemudian hari mulai dari masalah ekonomi, kekuasaan, perselingkuhan yang bisa menyebabkan pasangan tersebut bercerai atau pegatan.";
  }
  else if(listRatu.contains(_hitungCocok)){
  _hasil =  "Ratu";
  _keterangan = "Bisa dibilang pasangan tersebut memang sudah jodohnya. Dihargai dan disegani oleh tetangga dan lingkungan sekitar. Saking harmonisnya, bahkan banyak orang yang iri akan keharmonisannya dalam membina rumah tangga.";
  }
}
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
                          "$_hasil",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Container(
                        width: 300,
                        margin: EdgeInsets.fromLTRB(0, 10, 50, 0),
                        child: Text(
                          "$_keterangan",
                          style: TextStyle(
                              fontSize: 10),
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
                      perhitunganCocok();
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
