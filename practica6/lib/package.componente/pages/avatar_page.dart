import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        backgroundColor: Color(0xFFFE5721), // Color de fondo del AppBar
        actions: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'C',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(width: 10),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/imagen.png'), // Uso de imagen local
              ),
              SizedBox(width: 10),
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/imagen.png'), // Uso de imagen local
            ),
            SizedBox(height: 10.0),
            Text(
              'Omar Ramos Zaravia',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.white70,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.orange,
                ),
                title: Text(
                  '+51 900 567 468',
                  style: TextStyle(
                    color: Colors.orange.shade900,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.orange,
                ),
                title: Text(
                  'e_2019200664h@uncp.edu.pe',
                  style: TextStyle(
                    color: Colors.orange.shade900,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFFFAB40), // Color de fondo del Scaffold
    );
  }
}
