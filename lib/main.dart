import 'package:flutter/material.dart';
import 'Page/gallery.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          leading: Icon(Icons.home),
          title: Center(child: Text("Tugas 5 Flutter")),
          actions: <Widget>[Icon(Icons.search)],
        ),
        body: Column(
          children: <Widget>[
            Gallery(),
            Padding(padding: EdgeInsets.all(10.0)),
            GambarDiPilih(),
          ],
        ));
  }
}

class GambarDiPilih extends StatefulWidget {
  @override
  _GambarDiPilihState createState() => _GambarDiPilihState();
}

class _GambarDiPilihState extends State<GambarDiPilih> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
            color: Colors.white,
            child: Column(children: [
              Row(
                children: <Widget>[
                  Image.network(
                      "https://images.pexels.com/photos/371633/pexels-photo-371633.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                      width: 125.0,
                      height: 150.0),
                  Padding(padding: EdgeInsets.all(3.0)),
                  Flexible(
                      child: Text(
                          "Republik Indonesia atau Negara Kesatuan Republik Indonesia, atau lebih umum disebut Indonesia, adalah negara di Asia Tenggara yang dilintasi garis khatulistiwa dan berada di antara daratan Benua Asia dan Australia, serta antara Samudra Pasifik dan Samudrea Hindia."))
                ],
              ),
              ElevatedButton(
                child: Text("Pilih Gambar"),
                onPressed: () {
                  setState(() {
                    this.number += 1;
                  });
                },
              ),
              Padding(padding: EdgeInsets.all(5.0)),
            ])),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(this.number.toString(),
                style: TextStyle(color: Colors.red, fontSize: 30.0)),
            Padding(padding: EdgeInsets.all(10.0)),
            Text('Gambar Terpilih',
                style: TextStyle(fontSize: 20.0, color: Colors.white))
          ],
        )
      ],
    );
  }
}
