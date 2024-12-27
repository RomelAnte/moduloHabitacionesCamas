import 'package:flutter/material.dart';
import 'habitaciones_form_view.dart'; // Importa el formulario

class HabitacionesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listado de Habitaciones', 
          style: TextStyle(
            color: Colors.white
            )
          ), // Color de texto
        backgroundColor: Color(0xFF244754), // Color en hexadecimal
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: 10, // Número de habitaciones
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.network(
                    'https://hospitecnia.com/sites/default/files/inline-images/imagen-05_0.jpg', // URL de ejemplo
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Habitación ${index + 1}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Acción para ver detalle
                        },
                        child: Text('Ver Detalle'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Acción para editar
                        },
                        child: Text('Editar'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HabitacionesFormView()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}