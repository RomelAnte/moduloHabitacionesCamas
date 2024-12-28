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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    hintText: 'Ingrese el nombre',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE1E5E8)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Ubicación',
                    hintText: 'Ingrese la ubicación',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE1E5E8)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Descripción',
                    hintText: 'Ingrese la descripción',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE1E5E8)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Número de camas',
                    hintText: 'Ingrese el número de camas',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE1E5E8)),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Tipo de habitación',
                    hintText: 'Ingrese el tipo de habitación',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE1E5E8)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Recursos asociados',
                    hintText: 'Ingrese los recursos asociados',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE1E5E8)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Acción para subir imagen
                  },
                  icon: Icon(Icons.upload_file, color: Colors.white),
                  label: Text('Subir Imagen', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2c9aa9), // Color del botón
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Bordes menos redondeados
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Acción para guardar
                          }
                        },
                        icon: Icon(Icons.save, color: Colors.white),
                        label: Text('Guardar', style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF2c9aa9), // Color del botón
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0), // Bordes menos redondeados
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Acción para cancelar
                        },
                        icon: Icon(Icons.cancel, color: Colors.white),
                        label: Text('Cancelar', style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[900], // Color rojo oscuro
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0), // Bordes menos redondeados
                          ),
                        ),
                      ),
                    ),
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