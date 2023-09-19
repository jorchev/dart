import 'package:http/http.dart' as http;
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