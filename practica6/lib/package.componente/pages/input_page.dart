import 'package:flutter/material.dart';
import 'general_inputs_page.dart';
import 'password_inputs_page.dart';
import 'capture_values_page.dart';
import 'calendar_input_page.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InputPage SIII', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _buildButton(
                  'General-Inputs',
                  'Ir a detalle de General Inputs',
                      () => Navigator.push(context, MaterialPageRoute(builder: (context) => GeneralInputsPage())),
                ),
                _buildButton(
                  'Password-Inputs',
                  'Ir a detalle de Password Inputs',
                      () => Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordInputsPage())),
                ),
                _buildButton(
                  'Captura Valores del Input Page',
                  'Ir a detalle de Captura de Valores',
                      () => Navigator.push(context, MaterialPageRoute(builder: (context) => CaptureValuesPage())),
                ),
                _buildButton(
                  'Calendar Input Page',
                  'Ir a detalle de Calendar Input',
                      () => Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarInputPage())),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String title, String subtitle, VoidCallback onPressed) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(2.0), // padding to create space for the border
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black, width: 2.0),
          ),
          child: Icon(Icons.check, color: Colors.black, size: 20.0),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: onPressed,
      ),
    );
  }
}

