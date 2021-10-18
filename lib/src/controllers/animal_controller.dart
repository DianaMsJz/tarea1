import 'package:get/get.dart';
import 'package:tarea1/src/models/animal.dart';

class AnimalController extends GetxController {
  var existeAnimal = false.obs;
  var animal = Animal().obs;

  void crearAnimal(Animal pAnimal) {
    this.animal.value = pAnimal;
    this.existeAnimal.value = true;
  }

  void cambiarEdad(int pEdad) {
    this.animal.update((val) {
      val!.edad = pEdad;
    });
  }

  void cambiarEstado(String pEstado) {
    this.animal.update((val) {
      val!.estado = pEstado;
    });
  }

  void agregarComidas(String pComida) {
    this.animal.update((val) {
      val!.comidas = [...val.comidas, pComida];
    });
  }
}
