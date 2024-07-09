import 'package:flutter/material.dart';

class CaptureValuesPage extends StatefulWidget {
  @override
  State<CaptureValuesPage> createState() => _CaptureValuesPageState();
}

class _CaptureValuesPageState extends State<CaptureValuesPage> {
  String name = "";
  TextEditingController _nameController = TextEditingController(text: "Por defecto");
  TextEditingController _keyboardController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
          toolbarTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Capturando Inputs"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Ingrese tu nombre",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                onChanged: (String value) {
                  name = value;
                },
              ),
              SizedBox(height: 10.0), // Añadimos un espacio entre los campos
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Ingrese tu nombre",
                ),
              ),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(),
              ),
              SizedBox(height: 20.0), // Añadimos un espacio entre los campos
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2196F3), // Color de fondo del botón
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0), // Forma del botón
                  ),
                ),
                onPressed: () {
                  String concatenatedText = "$name ${_nameController.text}";
                  print(concatenatedText);
                  setState(() {
                    _keyboardController.text = concatenatedText;
                  });
                },
                child: Text(
                  "Mostrar Valor!",
                  style: TextStyle(color: Colors.white), // Color del texto
                ),
              ),
              SizedBox(height: 30.0), // Añadimos un espacio entre los campos
              TextField(
                controller: _keyboardController,
                keyboardType: TextInputType.number, // Teclado numérico
                obscureText: true, // No mostrar lo que se escribe
                decoration: InputDecoration(
                  labelText: "Teclados",
                ),
              ),
              SizedBox(height: 10.0), // Añadimos un espacio entre los campos
              Text(
                "Concatenación de nombres:",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Text(
                _keyboardController.text,
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

