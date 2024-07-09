import 'package:flutter/material.dart';
import 'avatar_page.dart';
import 'alert_page.dart';
import 'alert_page_2.dart';
import 'input_page.dart';
import 'drawer_y_stack_page.dart';
import 'banco_page.dart'; // Importamos la nueva página

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Componentes'),
        backgroundColor: Colors.grey[300],
      ),
      backgroundColor: Color(0xFFB3B3B3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/imagen2.jpg',
                width: 80,
                height: 80,
              ),
              SizedBox(height: 8.0),
              Text(
                'Flutter Componentes',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Expanded(
                child: ListView(
                  children: [
                    _buildCard('Avatar', 'Ir a detalle de Avatar', () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AvatarPage()));
                    }),
                    _buildCard('Alert', 'Ir a detalle de Alert', () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AlertPage()));
                    }),
                    _buildCard('Alert 2', 'Ir a detalle de Alert 2', () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AlertPage2()));
                    }),
                    _buildCard('Inputs', 'Ir a detalle de Inputs', () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
                    }),
                    _buildCard('Drawer y Stack', 'Ir a detalle de Drawer y Stack', () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DrawerYStackPage()));
                    }),
                    _buildCard('Banco', 'Ir a detalle de Banco', () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BancoPage()));
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(String title, String subtitle, VoidCallback onTap) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        leading: Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black),
            color: Colors.white,
          ),
          child: Icon(Icons.check, color: Colors.black, size: 20),
        ),
        title: Text(title, style: TextStyle(fontSize: 16)),
        subtitle: Text(subtitle, style: TextStyle(fontSize: 12)),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}
