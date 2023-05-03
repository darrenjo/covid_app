import 'dart:convert';

import 'package:flutter/material.dart';
import 'data_covid.dart';
import 'package:http/http.dart' as http;

class Data with ChangeNotifier {
  List<DataCovid> dataProvinsi = [];

  Future<void> fetchData() async {
    //INI OK
    //String url = "https://jsonplaceholder.typicode.com/users";

    //INI OK
    //String url = "https://aplysit.com/00_FLUTTER/datasetjson.json";

    //INI OK
    //String url = "https://aplysit.com/00_FLUTTER/118009/datasetjson.json";

    //INI OK
    String url = "https://aplysit.com/00_FLUTTER/1320003/user.php";

    //INI CHALLANGE
    //String url = "https://aplysit.com/00_FLUTTER/118009/userdetail.php";
    //Bagaimana cara kirim POST parameter? Nanti ya....

    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List extractData = (jsonDecode(response.body));
      for (var data in extractData) {
        dataProvinsi.add(DataCovid(
            id: data['id'],
            name: data['name'],
            email: data['email'],
            phone: data['phone'],
            address: data['address']));
      }
    }
  }
}
