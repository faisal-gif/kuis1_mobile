import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

import 'Result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  List<String> listItem = [
    "Senin",
    "Selasa",
    "Rabu",
    "Kamis",
    "Jumat",
    "Sabtu",
    "Minggu"
  ];
  List<String> listWeton = [
    "Legi",
    "Pahing",
    "Pon",
    "Wage",
    "Kliwon",
  ];
  String _newValueLaki = "Senin";
  String _newWetonLaki = "Legi";
  List<int> listPegat = [1,9,10,18,19,27,28,36];
  List<int> listRatu = [2,11,20,29];
  List<int> listJodoh = [3,12,21,30];
  List<int> listTopo = [4,13,22,31];
  List<int> listTinari = [5,14,23,32];
  List<int> listPadu = [6,15,24,33];
  List<int> listSujanan = [7,16,25,34];
  List<int> listPesthi = [8,17,26,35];
  
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
  else if(listSujanan.contains(_hitungCocok)){
_hasil = "Sujanan";
_keterangan = "Dalam berumah tangga, pasangan SUJANAN akan sering mengalami pertengkaran dan masalah perselingkuhan. Bisa itu dari pihak laki-laki maupun perempuan yang memulai perselingkuhan tersebut.";
  }
  else if(listTinari.contains(_hitungCocok)){
    _hasil ="Tinari";
    _keterangan = "Pasangan TINARI akan menemukan kebahagiaan. Dalam mencari rezeki diberikan kemudahan dan nggak sampai hidup kekurangan. Selain itu, hidupnya juga sering mendapat keberuntungan.";
  }
  else if(listTopo.contains(_hitungCocok)){
    _hasil = "Topo";
    _keterangan = "Dalam membina rumah tangga, pasangan TOPO akan sering mengalami kesusahan di awal musim karena masih saling memahami tapi akan bahagia pada akhirnya. Masalah yang dihadapi bisa saja soal ekonomi dan lainnya. Nah, saat sudah memiliki anak dan cukup lama berumah tangga, akhirnya akan hidup sukses dan bahagia.";
  }
   else if(listPadu.contains(_hitungCocok)){
    _hasil = "Padu";
    _keterangan = "Dalam berumah tangga, pasangan PADU akan sering mengalami pertengkaran. Tapi Bela, meskipun sering bertengkar, nggak sampai cerai. Masalah pertengkaran tersebut bahkan bisa dipicu dari hal-hal yang sifatnya cukup sepele.";
  }
   else if(listPesthi.contains(_hitungCocok)){
    _hasil = "Pesthi";
    _keterangan = "Dalam berumah tangga, pasangan PESTHI akan rukun, tenteram, damai sampai tua. Meskipun ada masalah apapun nggak akan sampai merusak keharmonisan keluarga.";
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
                          items: listItem.map((String value) {
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
                          items: listWeton.map((String value) {
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
                          items: listItem.map((String value) {
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
                          items: listWeton.map((String value) {
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
              Result(hasil: _hasil, keterangan: _keterangan),
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
