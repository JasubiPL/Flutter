void main() {
  final nombre  = 'Fernando';

  saludar(nombre, 'Greeting');
  saludar2(nombre: nombre, mensaje: 'Nuevo mensaje');
}

void saludar(String nombre, [String mensaje = 'Hi']){
  print('$mensaje $nombre');
}

void saludar2({
  required String nombre,
  required String mensaje,
}){
  print('$mensaje $nombre');
}