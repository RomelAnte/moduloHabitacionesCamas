import 'package:flutter/material.dart';

class HabitacionesFormView extends StatefulWidget {
  @override
  _HabitacionesFormViewState createState() => _HabitacionesFormViewState();
}

class _HabitacionesFormViewState extends State<HabitacionesFormView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario de Habitación', 
          style: TextStyle(
            color: Colors.white
            )
          ),
        backgroundColor: Color(0xFF244754), // Color en hexadecimal
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  hintText: 'Ingrese el nombre',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Ubicación',
                  hintText: 'Ingrese la ubicación',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Descripción',
                  hintText: 'Ingrese la descripción',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Número de camas',
                  hintText: 'Ingrese el número de camas',
                ),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Tipo de habitación',
                  hintText: 'Ingrese el tipo de habitación',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Recursos asociados',
                  hintText: 'Ingrese los recursos asociados',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Acción para subir imagen
                },
                child: Text('Subir Imagen'),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Acción para guardar
                      }
                    },
                    child: Text('Guardar'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Acción para cancelar
                    },
                    child: Text('Cancelar'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}