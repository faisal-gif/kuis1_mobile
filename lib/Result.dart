
import 'package:flutter/cupertino.dart';

class Result extends StatelessWidget {
  const Result({
    Key key,
    @required String hasil,
    @required String keterangan,
  }) : _hasil = hasil, _keterangan = keterangan, super(key: key);

  final String _hasil;
  final String _keterangan;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
