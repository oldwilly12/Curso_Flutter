void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print('Exito: $value');
  } on Exception catch (err) {
    print('Tenemos una Exception: $err');
  } catch (err) {
    print('OOP!algo terrible paso: $err');
  } finally {
    print('Fin del try y catch');
  }

  print('Fin del programa');
}

//Funciones asincronas siempre daran un Future
Future<String> httpGet(String url) async {
  await Future.delayed(Duration(
      seconds:
          1)); // await es como decir que hasta que se realize esta actividad

  throw Exception('No hay parametros en el URL');
  //throw 'Error en la peticion';

  //return 'Tenemos un valor de la peticion';
}
