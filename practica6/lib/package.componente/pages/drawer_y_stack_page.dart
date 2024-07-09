import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'alert_page.dart';
import 'alert_page_2.dart';
import 'avatar_page.dart';
import 'input_page.dart';

class DrawerYStackPage extends StatefulWidget {
  @override
  State<DrawerYStackPage> createState() => _DrawerYStackPageState();
}

class _DrawerYStackPageState extends State<DrawerYStackPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isInvisible = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        key: _scaffoldKey,
        drawer: Drawer(
          elevation: 20,
          child: Column(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/paisaje.jpeg'), // Imagen local
                  ),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage('assets/images/imagen.png'), // Imagen local
                      ),
                      Text(
                        "Omar Ramos Zaravia",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        "Colaborador",
                        style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AvatarPage()));
                },
                leading: Icon(Icons.person),
                title: Text("Avatar Page"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AlertPage()));
                },
                leading: Icon(Icons.warning),
                title: Text("Alert Page"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AlertPage2()));
                },
                leading: Icon(Icons.warning),
                title: Text("Alert Page 2"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
                },
                leading: Icon(Icons.edit),
                title: Text("Inputs Page"),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Positioned(
              top: -200,
              right: -200,
              child: MyCircleWidget(
                colores: [Color(0xFFD74287), Color(0xFFE99189)],
                radius: 200,
              ),
            ),
            Positioned(
              top: 80,
              left: 30,
              child: MyCircleWidget(
                radius: 50,
                colores: [Color(0xFF9730EC), Color(0xFF0C7544)],
              ),
            ),
            Positioned(
              bottom: -150,
              left: -150,
              child: MyCircleWidget(
                radius: 200,
                colores: [Color(0xFF9730EC), Color(0xFF0C7544)],
              ),
            ),
            Positioned(
              top: 16,
              left: 16,
              child: IconButton(
                onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                icon: Icon(
                  Icons.menu,
                  color: Color(0xFF944DB7),
                  size: 30.0,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 180.0,
                      child: Text(
                        "Create Your Account",
                        style: TextStyle(
                          color: Color(0xFF362274),
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 50.0),
                    TextField(
                      style: TextStyle(color: Color(0xFF945FC5)),
                      cursorColor: Color(0xFF7766AD),
                      decoration: InputDecoration(
                        hintText: "Email Address",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFF7C6CB0),
                        ),
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Color(0xFF72629B),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF9730EC),
                            width: 1.4,
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      style: TextStyle(color: Color(0xFF945FC5)),
                      cursorColor: Color(0xFF7766AD),
                      obscureText: isInvisible,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFF7C6CB0),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xFF72629B),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            isInvisible ? Icons.visibility_off : Icons.visibility,
                            color: Color(0xFF72629B),
                          ),
                          onPressed: () {
                            setState(() {
                              isInvisible = !isInvisible;
                            });
                          },
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF9730EC),
                            width: 1.4,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50.0),
                    Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(40.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(4, 4),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCircleWidget extends StatelessWidget {
  final List<Color> colores;
  final double radius;

  const MyCircleWidget({
    Key? key,
    required this.colores,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: colores,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
