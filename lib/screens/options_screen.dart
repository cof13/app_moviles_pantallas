import 'package:flutter/material.dart';

class OptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, 
      appBar: AppBar(
        title: Text('Opciones'),
        backgroundColor: Colors.green, 
      ),
      body: ListView(
        children: [
          // Opción de Inicio
          ListTile(
            leading: Icon(Icons.home, color: Colors.white),
            title: Text(
              'Inicio',
              style: TextStyle(color: Colors.white), 
            ),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          Divider(color: Colors.green), 
          // Opción de Descripción
          ListTile(
            leading: Icon(Icons.info, color: Colors.white), 
            title: Text(
              'Descripcion',
              style: TextStyle(color: Colors.white), 
            ),
            onTap: () {
              Navigator.pushNamed(context, '/description');
            },
          ),
          Divider(color: Colors.green), 
          
          ListTile(
            leading: Icon(Icons.logout, color: Colors.white), 
            title: Text(
              'Cerrar Sesion',
              style: TextStyle(color: Colors.white), 
            ),
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }
}
