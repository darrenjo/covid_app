import 'package:flutter/material.dart';
import 'package:covid_app/provider/data.dart';
import 'package:covid_app/provider/data_covid.dart';

class DetailProvinsi extends StatelessWidget {
  DetailProvinsi({super.key, required this.provinsi});

  DataCovid provinsi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      appBar: AppBar(title: Text(provinsi.name!)),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Text("Details"),
            SizedBox(
              height: 5,
            ),
            Text(
              provinsi.name!,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              provinsi.id!,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RowGrid1(
              data1: provinsi.name!,
              descData1: "Name",
            ),
            RowGrid1(
              data1: provinsi.phone!,
              descData1: "Phone number",
            ),
            RowGrid1(
              data1: provinsi.email!,
              descData1: "Email",
            ),
            RowGrid1(
              data1: provinsi.address!,
              descData1: "Address",
            ),
          ],
        ),
      ),
    );
  }
}

class RowGrid3 extends StatelessWidget {
  RowGrid3({
    super.key,
    required this.data1,
    required this.data2,
    required this.data3,
    required this.descData1,
    required this.descData2,
    required this.descData3,
  });

  String data1;
  String data2;
  String data3;
  String descData1;
  String descData2;
  String descData3;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Text(
                    data1,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(descData1)
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Text(
                    data2,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(descData2)
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Text(
                    data3,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(descData3)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class RowGrid2 extends StatelessWidget {
  RowGrid2({
    super.key,
    required this.data1,
    required this.data2,
    required this.descData1,
    required this.descData2,
  });

  String data1;
  String data2;
  String descData1;
  String descData2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Text(
                    data1,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(descData1)
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Text(
                    data2,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(descData2)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class RowGrid1 extends StatelessWidget {
  RowGrid1({
    super.key,
    required this.data1,
    required this.descData1,
  });
  String data1;
  String descData1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Text(
                    data1,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(descData1)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
