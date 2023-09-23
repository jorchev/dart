import 'package:http/http.dart' as http;
import 'package:paquetes/classes/pais.dart';
import 'package:paquetes/classes/request_response.dart';

void getReqResServices(){
  //var url = Uri.https('reqres.in','api/users?page=2');
  var url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then( (res) {

    // print(res);
    // final body = jsonDecode(res.body);
    // print(body);
    // print('page: ${ body['page'] }');
    // print('per_page: ${ body['per_page'] }');
    // print('id del tercer elemento: ${ body['data'][2]['id'] } ');

    final resReq = reqResFromJson( res.body );

    print('page: ${ resReq.page }');
    print('per_page: ${ resReq.perPage }');
    print('id del tercer elemento: ${ resReq.data[2].id } ');

  } );
}

void getReqResPaisServices(){

  var url = Uri.parse('https://restcountries.com/v3.1/alpha/co');
  http.get(url).then((res) {

    String div = '=';

    final resReqPais = paisFromJson( res.body );
    print(div * 30);
    print('Pais: ${ resReqPais[0].name.common }');
    print('Población: ${ resReqPais[0].population }');
    print('Fronteras:');
    resReqPais[0].borders.forEach((element) {
      String pais = element[0] + element.substring(1,3).toLowerCase();
      print('    $pais');
    });
    print('Lenguaje: ${ resReqPais[0].languages.spa }');
    print('Latitud: ${ resReqPais[0].latlng[0] }');
    print('Longitud: ${ resReqPais[0].latlng[1] }');
    print('Moneda: ${ resReqPais[0].currencies.cop.name }');
    print('Bandera: ${ resReqPais[0].flags.svg }');
    print(div * 30);

  });
  
}