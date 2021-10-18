import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarea1/src/controllers/animal_controller.dart';
import 'package:tarea1/src/models/animal.dart';

class Modificar extends StatelessWidget {
  const Modificar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final animalCtrl = Get.find<AnimalController>();
    TextStyle cfont = TextStyle(color: Colors.white, fontSize: 18);
    return Scaffold(
      appBar: AppBar(
        title: Text('Modificar Animal'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(30)),
            MaterialButton(
              minWidth: 250,
              onPressed: () {
                animalCtrl.crearAnimal(
                    Animal(nombre: 'Gato', edad: 2, estado: 'Está despierto'));
              },
              child: Text(
                'Agregar Animal',
                style: cfont,
              ),
              color: Colors.pink,
            ),
            MaterialButton(
              minWidth: 250,
              onPressed: () {
                animalCtrl.cambiarEdad(3);
              },
              child: Text(
                'Cambiar edad',
                style: cfont,
              ),
              color: Colors.pink,
            ),
            MaterialButton(
              minWidth: 250,
              onPressed: () {
                animalCtrl.cambiarEstado('Está dormido');
              },
              child: Text(
                'Hacer dormir',
                style: cfont,
              ),
              color: Colors.pink,
            ),
            MaterialButton(
              minWidth: 250,
              onPressed: () {
                animalCtrl.agregarComidas('Whiskas');
              },
              child: Text(
                'Agregar comidas favoritas',
                style: cfont,
              ),
              color: Colors.pink,
            )
          ],
        ),
      ),
    );
  }
}
