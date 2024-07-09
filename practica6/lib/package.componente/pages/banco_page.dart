import 'package:flutter/material.dart';

class BancoPage extends StatelessWidget {
  const BancoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/fondo_banco.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Omar'),
                accountEmail: null,
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('OM'),
                ),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              _buildDrawerItem(Icons.settings, 'Configuración', () {}),
              _buildDrawerItem(Icons.security, 'Seguridad y privacidad', () {}),
              _buildDrawerItem(Icons.vpn_key, 'Token digital', () {}),
              _buildDrawerItem(Icons.qr_code, 'Operar con QR / Plin', () {}),
              _buildDrawerItem(Icons.location_on, 'Puntos de atención', () {}),
              _buildDrawerItem(Icons.phone, 'Comunícate con nosotros', () {}),
              _buildDrawerItem(Icons.apps, 'Aplicaciones', () {}),
              _buildDrawerItem(Icons.info, 'Acerca de BBVA', () {}),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/fondo_banco.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Center(
                  child: Image.asset(
                    'assets/images/bbva_logo.png',
                    height: 40,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/imagen.png'),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Hola Omar',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Cambiar usuario',
                          style: TextStyle(color: Colors.lightBlue),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: Text(
                          'Iniciar sesión',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 80, // Altura fija para el contenedor de botones
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildBottomIconButton('Token digital', Icons.lock),
                    _buildBottomIconButton('Puntos de atención', Icons.business),
                    _buildBottomIconButton('Plin', 'plin2.jpeg', isImage: true),
                    _buildBottomIconButton('Acceder a Mi Negocio', Icons.folder),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  ListTile _buildDrawerItem(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: TextStyle(color: Colors.white)),
      onTap: onTap,
    );
  }

  Widget _buildBottomIconButton(String label, dynamic iconOrAsset, {bool isImage = false}) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          isImage
              ? Image.asset(
            'assets/images/$iconOrAsset',
            width: 30,
            height: 30,
            fit: BoxFit.contain,
          )
              : Icon(
            iconOrAsset,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(height: 4.0),
          Text(
            label,
            style: TextStyle(color: Colors.white, fontSize: 12),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
