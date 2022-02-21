import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.orange[500],
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              color: Colors.orange,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              margin: const EdgeInsets.fromLTRB(40, 80, 40, 0),
              child: const Text(
                "Scan Your QR",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: QrImage(
                data: "https://www.youtube.com/watch?v=l1pEtiHna-c&ab_channel=Tetadevelopper",
                version: QrVersions.auto,
                size: 200.0,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Scan your code"),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Delete your scan"),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
