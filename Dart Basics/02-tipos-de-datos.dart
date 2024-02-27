void main(){
  //String
  final String nombre = 'Tony';
  final apellido = 'Stark';

  //nombre = 'Peter';

  print('$nombre $apellido');

  // Numeros

  int empleados = 10;
  double salario = 1856.32;

  print( empleados );
  print( salario );

  List<int> numeros = [1,2,3,4,5,6,7,8,9,10];
  numeros.add(11);
  print( numeros );
  
  final masNumeros = List.generate(100, (int index ) => index );
  print(masNumeros);

  Map persona = {
    'nombre' : 'Jasubi',
    'edad' : 26,
    'soltero' : false,
    true : false,
    1 : 100,
    2 : 500
  };

  persona.addAll({ 'segundoNombre' : 'Juan' });

  Map<String, dynamic> persona2 = {
    'nombre' : 'Jasubi',
    'edad' : 26,
    'soltero' : false,
  };


  print( persona );

}