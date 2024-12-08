import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Descripción'),
        backgroundColor: Colors.green, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text(
                'La música de Mägo de Oz se caracteriza por ser una mezcla única de heavy metal y música celta, '
                'combinando elementos del rock y el metal con influencias de la música folclórica tradicional, '
                'especialmente de origen irlandés y español. Este estilo distintivo ha sido denominado como folk metal '
                'o rock céltico, y es uno de los sellos que ha hecho famosa a la banda.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white, 
                ),
              ),
              SizedBox(height: 20),
              
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/options');
                },
                child: Text('Ir a Opciones'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, 
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
