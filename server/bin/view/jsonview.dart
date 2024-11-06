import 'dart:convert';

import 'package:shelf/shelf.dart';

class Jsonview {
  static Response render(Map<String, dynamic> data){
    return Response(200,body: jsonEncode(data));
  }

  static Response renderErro(String menssage,String erro,[int statuscode = 500]){
    return Response(statuscode,body: jsonEncode({"menssage":"mesange","erro":'erro'}));
  }

}