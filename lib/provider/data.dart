import 'dart:convert';
import 'data_covid.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Data with ChangeNotifier {
  List<DataCovid> dataProvinsi = [];

  Future<void> fetchData() async {
    //INI OK
    String url = "https://aplysit.com/00_FLUTTER/1320003/user.php";

    // POST via POSTMAN
    //String url = "https://aplysit.com/00_FLUTTER/1320003/user_post.php";

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
