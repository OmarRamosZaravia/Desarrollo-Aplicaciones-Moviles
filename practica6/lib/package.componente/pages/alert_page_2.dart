import 'package:flutter/material.dart';
import 'info_page.dart';
import 'settings_page.dart';

class AlertPage2 extends StatelessWidget {
  const AlertPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert 2'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.purple[100]!, Colors.purple[50]!],
          ),
        ),
        child: Center(
          child: Container(
            width: 300,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Selecciona una opción',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.purple),
                ),
                SizedBox(height: 20),
                _buildButton(
                  context,
                  'Información',
                  Colors.blue,
                  Icons.info_outline,
                  InfoPage(),
                ),
                SizedBox(height: 15),
                _buildButton(
                  context,
                  'Configuración',
                  Colors.green,
                  Icons.settings,
                  SettingsPage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, Color color, IconData icon, Widget page) {
    return ElevatedButton.icon(
      icon: Icon(icon, color: Colors.white),
      label: Text(text, style: TextStyle(fontSize: 18)),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: color,
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 3,
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}

