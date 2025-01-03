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
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(4.0)),
                    child: Image.network(
                      'https://hospitecnia.com/sites/default/files/inline-images/imagen-05_0.jpg', // URL de ejemplo
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Habitación ${index + 1}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Acción para ver detalle
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF2c9aa9), // Color del botón
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0), // Bordes menos redondeados
                              ),
                            ),
                            child: Text(
                              'Ver Detalle',
                              style: TextStyle(color: Colors.white), // Color del texto a blanco
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Acción para editar
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red[900], // Color rojo oscuro
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0), // Bordes menos redondeados
                              ),
                            ),
                            child: Text(
                              'Editar',
                              style: TextStyle(color: Colors.white), // Color del texto a blanco
                            ),
                          ),
                        ),
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
        backgroundColor: Color(0xFF2c9aa9), // Color del FAB
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}