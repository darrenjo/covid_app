import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widget/provinsi_item.dart';
import '../provider/data.dart';

class ProvinsiScreen extends StatelessWidget {
  const ProvinsiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Data dataCovid = Provider.of<Data>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Covid19 App"),
        ),
        body: FutureBuilder(
            future: dataCovid.fetchData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.builder(
                    // ignore: prefer_const_constructors
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        childAspectRatio: 5 / 3),
                    itemCount: dataCovid.dataProvinsi.length,
                    itemBuilder: (context, index) {
                      final data = dataCovid.dataProvinsi[index];
                      return ProvinsiItem(
                        dataProvinsi: data,
                      );
                    },
                  ),
                );
              }
            }));
  }
}
