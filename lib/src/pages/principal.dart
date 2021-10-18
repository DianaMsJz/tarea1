import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarea1/src/controllers/animal_controller.dart';
import 'package:tarea1/src/models/animal.dart';
import 'package:tarea1/src/pages/modificar.dart';

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final animalCtrl = Get.put(AnimalController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Animal'),
      ),
      body: Obx(() => animalCtrl.existeAnimal.value
          ? InformacionAnimal(animal: animalCtrl.animal.value)
          : NoAnimal()),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.flash_on),
        onPressed: () {
          Get.to(Modificar());
        },
      ),
    );
  }
}

class NoAnimal extends StatelessWidget {
  const NoAnimal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        color: Colors.pink,
        padding: EdgeInsets.all(10),
        child: Text(
          'No existe',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

class InformacionAnimal extends StatelessWidget {
  final Animal animal;
  const InformacionAnimal({Key? key, required this.animal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text('Información del animal'),
          Divider(),
          ListTile(title: Text('Nombre del animal: ${this.animal.nombre}')),
          ListTile(title: Text('Edad del animal: ${this.animal.edad}')),
          ListTile(title: Text('Estado: ${this.animal.estado}')),
          Divider(),
          ...animal.comidas.map(
            (e) => ListTile(
              title: Text(e),
            ),
          )
        ],
      ),
    );
  }
}
