import 'package:flutter/material.dart';
import 'alert_page2.dart'; // Importar el archivo alert_page2.dart

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7C4DFF), // Color de fondo HEX 7c4dff
      body: Center(
        child: Container(
          width: 200.0, // Ancho del botón
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFF9800), // Color del botón HEX ff9800
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              textStyle: TextStyle(fontSize: 18.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Radio de esquina del botón
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AlertPage2()),
              );
            },
            child: Text('Boton de alerta'),
          ),
        ),
      ),
    );
  }
}
