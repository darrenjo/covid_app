import 'package:flutter/material.dart';
import '../provider/data_covid.dart';

// ignore: must_be_immutable
class ProvinsiItem extends StatelessWidget {
  ProvinsiItem({super.key, required this.dataProvinsi});
  DataCovid dataProvinsi;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dataProvinsi.name!,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            dataProvinsi.phone!,
            style: const TextStyle(fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(dataProvinsi.email!,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red))
        ],
      ),
    );
  }
}
