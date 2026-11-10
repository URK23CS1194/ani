
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrafficPage(),
    );
  }
}

class TrafficPage extends StatefulWidget {
  @override
  State<TrafficPage> createState() => _TrafficPageState();
}

class _TrafficPageState extends State<TrafficPage> {

  bool isGreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Traffic Signal Animation"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            AnimatedContainer(
              duration: Duration(seconds: 1),

              width: isGreen ? 200 : 150,
              height: isGreen ? 200 : 150,

              color: isGreen ? Colors.green : Colors.red,

              child: Center(
                child: Text(
                  isGreen ? "GO" : "STOP",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  isGreen = !isGreen;
                });
              },
              child: Text("Change Signal"),
            ),

          ],
        ),
      ),
    );
  }
}
