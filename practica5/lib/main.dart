import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[800],
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        '6:14',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.settings, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.play_arrow, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.insert_drive_file, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.circle, color: Colors.white),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.wifi, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.signal_cellular_alt, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.battery_full, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/imagen.png'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Ramon Torres',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'FLUTTER DEVELOPER',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        letterSpacing: 2.5,
                      ),
                    ),
                    SizedBox(height: 30),
                    Card(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.teal[800],
                        ),
                        title: Text(
                          '+51 552 542 111',
                          style: TextStyle(
                            color: Colors.teal[900],
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Colors.teal[800],
                        ),
                        title: Text(
                          'ramond@gmail.com',
                          style: TextStyle(
                            color: Colors.teal[900],
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

