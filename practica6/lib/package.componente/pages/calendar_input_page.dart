import 'package:flutter/material.dart';
import 'home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Components App",
      home: HomePage(),
    );
  }
}

class CalendarInputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calendar Input',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: CalendarInputBody(),
    );
  }
}

class CalendarInputBody extends StatefulWidget {
  @override
  _CalendarInputBodyState createState() => _CalendarInputBodyState();
}

class _CalendarInputBodyState extends State<CalendarInputBody> {
  TextEditingController _dateTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _dateTimeController,
            readOnly: true,
            decoration: InputDecoration(
              hintText: "Fecha de nacimiento",
              suffixIcon: Icon(Icons.date_range),
            ),
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
              selectDate();
            },
          ),
        ],
      ),
    );
  }

  Future<void> selectDate() async {
    DateTime? dateSelected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light(
              primary: Colors.blue, // Color de la barra superior del calendario
              onPrimary: Colors.white, // Color del texto en la barra superior
              onSurface: Colors.black, // Color del texto en el diálogo
            ),
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.blue, // Color de fondo de la parte superior
              iconTheme: IconThemeData(color: Colors.white), // Color de los iconos en la parte superior
              titleTextStyle: TextStyle(color: Colors.white), // Color del texto en la parte superior
            ),
            dialogBackgroundColor: Colors.white,
          ),
          child: child!,
        );
      },
    );

    if (dateSelected != null) {
      setState(() {
        _dateTimeController.text = dateSelected.toString().substring(0, 10);
      });
    }
  }
}

