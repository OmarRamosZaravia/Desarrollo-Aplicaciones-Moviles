import 'package:flutter/material.dart';

void main() {
  runApp (MyApp()) ;
}

class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super(key:key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.green,
            child: Column(
              children: [
                Image.network(
                  "https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg"
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lago en las montañas",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1696a6)
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Sacado de pexless",
                                style: TextStyle(
                                  color: Color(0xff4FE5CD)
                                ),
                              ),
                            ],
                          ),
                          Row (
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xffFF6464),
                                size: 30.0,
                              ),
                              Text(
                                "4.1",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18.0,
                                  letterSpacing: 2.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.blueAccent,
                              ),
                              Text(
                                "CALL",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.star, // vacio
                                color: Colors.blueAccent,
                              ),
                              Text(
                                "SEND",
                                style:TextStyle(
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.share,
                                color: Colors.blueAccent,
                              ),
                              Text(
                                "SHARE",
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimenbook."
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}









