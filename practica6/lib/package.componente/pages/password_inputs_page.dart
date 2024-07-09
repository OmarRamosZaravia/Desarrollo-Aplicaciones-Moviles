import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PasswordInputsPage(),
    );
  }
}

class PasswordInputsPage extends StatefulWidget {
  @override
  _PasswordInputsPageState createState() => _PasswordInputsPageState();
}

class _PasswordInputsPageState extends State<PasswordInputsPage> {
  bool isInvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Password-InputPage',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: TextField(
          obscureText: isInvisible,
          decoration: InputDecoration(
            hintText: 'Ingrese la contraseña',
            hintStyle: TextStyle(color: Colors.grey),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                isInvisible ? Icons.visibility_off : Icons.visibility,
                color: Colors.blue,
              ),
              onPressed: () {
                setState(() {
                  isInvisible = !isInvisible;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
