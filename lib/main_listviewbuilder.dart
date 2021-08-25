import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BelajarListViewBuilder(),
    );
  }
}

class BelajarListViewBuilder extends StatelessWidget {
  // membuat List
  final List bulan = [
    "Januari",
    "Februari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar ListView Builder'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            /*child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                bulan[index],
                style: TextStyle(fontSize: 24.0),
              ),
            ),*/
            child: ListTile(
              title: Text(bulan[index], style: TextStyle(fontSize: 24.0)),
              subtitle: Text('ini subtitle dari ' + bulan[index]),
              leading: CircleAvatar(
                child: Text(
                  bulan[index][0], // ambil karakter ke 1
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              trailing: Icon(Icons.list),
              onTap: () {
                // anonymous function
                // perintah yang dijalankan
                AlertDialog alert1 = AlertDialog(
                  title: Text('Nama Bulan'),
                  content: Text(bulan[index]),
                  actions: <Widget>[
                    // button
                    TextButton(
                      onPressed: () {
                        showResult(context);
                      },
                      child: Text('OK'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('CANCEL'),
                    ),
                  ],
                );
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert1;
                    });
              },
            ),
          );
        },
        itemCount: bulan.length,
      ),
    );
  }

  void showResult(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Tekan OK'),
            content: Text('Anda menekan tombol OK'),
            actions: <Widget>[
              TextButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.home_filled),
                label: Text('Tombol Ok'),
              ),
            ],
          );
        });
  }
}
