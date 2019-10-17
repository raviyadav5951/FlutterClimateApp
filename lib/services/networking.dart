import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{
  final String _url;

  NetworkHelper(this._url);

  Future getData ()
  async {
      http.Response response = await http.get(_url);
    if (response.statusCode == 200) {

      var decodedData=jsonDecode(response.body);
    
      return decodedData;
    } else {
      print(response);
    }
  }
  

}