import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarea1/src/pages/modificar.dart';
import 'package:tarea1/src/pages/principal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Zoologico',
      initialRoute: '/principal',
      getPages: [
        GetPage(name: '/principal', page: () => Principal()),
        GetPage(name: '/modif', page: () => Modificar())
      ],
    );
  }
}
