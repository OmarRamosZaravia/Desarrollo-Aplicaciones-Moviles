import 'package:flutter/material.dart';

class GeneralInputsPage extends StatelessWidget {
  const GeneralInputsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'General-InputPage SIII',
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              maxLines: 1,
              maxLength: 20,
              textAlign: TextAlign.start,
              cursorColor: Colors.purple,
              style: TextStyle(
                color: Colors.purpleAccent,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
                hintText: 'arturosolisf@gmail.com',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black.withOpacity(0.35),
                  fontSize: 16.0,
                ),
                icon: Icon(Icons.email),
                prefixIcon: Icon(Icons.alternate_email),
              ),
              onChanged: (String value) {
                print(value);
              },
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Buscar producto',
                prefixIcon: Icon(Icons.search),
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.redAccent,
                    width: 4.0,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.yellowAccent,
                    width: 4.0,
                  ),
                ),
                disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 4.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 12,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Buscar producto...',
                  hintStyle: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black.withOpacity(0.35),
                  ),
                  suffixIcon: Container(
                    margin: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pink,
                          offset: Offset(4, 4),
                          blurRadius: 7.0,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
