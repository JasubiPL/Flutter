void main(){
  final wolverine = new Heroe(nombre: 'Logan', poder: 'Regeneracion');

  wolverine.nombre = 'Logan';
  wolverine.poder = 'Regeneracion';

  print( wolverine );
}

class Heroe{

  String nombre;
  String poder;

  Heroe({
    required this.nombre,
    required this.poder
  });

  String toString(){
    return 'Heroe: nombre: ${ this.nombre }, poder: ${ this.poder }';
  }

}