class Animal {
  String? nombre;
  int? edad;
  String? estado;
  List<String> comidas;

  Animal({
    this.nombre,
    this.edad,
    this.estado,
    this.comidas = const [],
  });
}
