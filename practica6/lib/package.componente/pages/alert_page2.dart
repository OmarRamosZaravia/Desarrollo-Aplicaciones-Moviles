import 'package:flutter/material.dart';
// Asegúrate de importar el archivo principal main.dart

class AlertPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF35216D), // Color de fondo HEX 35216d
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Arturo Titulo del Alertdialog',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              CircleAvatar(
                radius: 40.0,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.check,
                  size: 40.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Flutter alert',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              Text(
                'Lorem Ipsum is simply dummy text of the '
                    'printing and typesetting industry. Lorem '
                    'Ipsum has been the industry’s standard '
                    'dummy text ever since the 1500s, when an '
                    'unknown printer took a galley of type and '
                    'scrambled it to make a type specimen book. It '
                    'has survived not only five centuries, but also '
                    'the leap into electronic typesetting, remaining '
                    'essentially unchanged.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF2196F3), // Color celeste del botón cerrar
                      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                    ),
                    onPressed: () {
                      Navigator.pop(context); // Regresar a la ventana principal
                    },
                    child: Text(
                      'Cerrar',
                      style: TextStyle(color: Colors.white), // Texto blanco
                    ),
                  ),
                  SizedBox(width: 10.0), // Espacio entre los botones
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF2196F3), // Color celeste del botón aceptar
                      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                    ),
                    onPressed: () {
                      Navigator.pop(context); // Regresar a la ventana principal
                    },
                    child: Text(
                      'Aceptar',
                      style: TextStyle(color: Colors.white), // Texto blanco
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

