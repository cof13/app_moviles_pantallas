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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildHeaderSection('Historia del Grupo', Icons.history),
                buildContentSection(
                  'Mägo de Oz se formó en Madrid el 7 de julio de 1988. La banda ha evolucionado desde sus inicios como un proyecto pequeño hasta convertirse en una leyenda del heavy metal, incorporando elementos de folk, opera y música celta. Su primer gran éxito llegó en 1998 con el álbum "La Leyenda de la Mancha", que incluye canciones icónicas como "Molinos de Viento".'
                ),
                SizedBox(height: 20),
                buildHeaderSection('Influencias', Icons.music_note),
                buildContentSection(
                  'La música de Mägo de Oz está influenciada por una amplia gama de estilos, incluyendo folk rock, música celta, heavy metal, power metal, y hard rock. La temática de sus canciones abarca desde lo romántico y literario hasta lo histórico y fantástico.'
                ),
                SizedBox(height: 20),
                buildHeaderSection('Miembros Actuales', Icons.group),
                buildContentSection(
                  '- Txus di Fellatio (batería)\n- Mohamed (violín)\n- Javier Domínguez Zeta (voz)\n- Patricia Tapia (coros y voz secundaria)\n- Josema (flauta travesera, whistle, pito castellano y bodhrán)\n- Fernando Mainer (bajo)\n- Javi Díez (teclados, sintetizadores, acordeón y MorphWiz)\n- Víctor de Andrés (guitarra solista)\n- Manuel Seoane (guitarra rítmica)'
                ),
                SizedBox(height: 20),
                buildHeaderSection('Exmiembros', Icons.history_toggle_off),
                buildContentSection(
                  '- José Andrés (voz)\n- Carlitos (guitarra solista)\n- Frank (guitarra rítmica y acústica)\n- Salva (bajo)\n- Juanma (voz)\n- Chema (guitarra)\n- Charlie (guitarra solista)\n- Piter (fallecido)\n- David Alfonso (voz)\n- Juan Carlos Quiles (guitarra)\n- Sergio Martínez (bajo)\n- Luis Navalón (bajo)\n- Fernando Ponce de León (fallecido)'
                ),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildHeaderSection(String title, IconData icon) {
    return Row(
      children: [
        Icon(icon, color: Colors.green, size: 28),
        SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget buildContentSection(String content) {
    return Text(
      content,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DescriptionScreen(),
  ));
}
