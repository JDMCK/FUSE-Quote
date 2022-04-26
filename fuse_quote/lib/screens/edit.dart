import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fuse_quote/services/servicewidgets.dart';
import 'package:fuse_quote/services/service.dart';

class Edit extends StatefulWidget {
  Edit({Key? key}) : super(key: key);
  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  var pricingData;

  String dropDownValue = 'Siding';
  List<String> items = [
    'Siding',
    'Gutters',
    'Windows',
    'Driveway',
    'Roof',
    'Patio',
    'Deck',
    'Soffits',
    'Trim',
    'Fencing',
    'Custom'
  ];

  // readPrices() async {
  //   String? contents;
  //   // Reading the file
  //   try {
  //     contents = await pricingData?.readAsString();
  //   } catch (e) {
  //     throw Exception('Failed to read data');
  //   }
  //   pricingData = const CsvToListConverter().convert(contents);
  // }

  Service pricedService(Service service) {
    // Handles quantity calculation
    int quantity = service.quantity ?? 1;
    service.quantity = null;
    // Convert service to key
    List<dynamic> list = [];
    list.add(service.name);
    list.add(service.story ?? '');
    list.add(service.size ?? '');
    list.add(service.quality ?? '');
    list.add(service.material ?? '');
    String key = list.join();
    print(key);
    service.price = pricingData[key] * quantity;
    return service;
  }

  void saveService(Service service) {
    Navigator.pop(context, pricedService(service));
  }

  @override
  Widget build(BuildContext context) {
    // Recieves pricing data
    pricingData = ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 58, 154, 214),
        title: Text('Service Creator', style: TextStyle(fontSize: 28)),
        toolbarHeight: 75,
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Center(
          child: Column(children: [
            DropdownButton(
              value: dropDownValue,
              items: items.map((String item) {
                return DropdownMenuItem(
                  value: item,
                  child: Center(child: Text(item)),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropDownValue = newValue!;
                });
              },
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 58, 154, 214),
              ),
              isExpanded: true,
              borderRadius: BorderRadius.circular(15),
            ),
            if (dropDownValue == 'Siding') Siding(saveService: saveService),
            if (dropDownValue == 'Gutters') Gutters(saveService: saveService),
            if (dropDownValue == 'Windows') Windows(saveService: saveService),
            if (dropDownValue == 'Driveway') Driveway(saveService: saveService),
            if (dropDownValue == 'Roof') Roof(saveService: saveService),
            if (dropDownValue == 'Patio') Patio(saveService: saveService),
            if (dropDownValue == 'Deck') Deck(saveService: saveService),
            if (dropDownValue == 'Soffits') Soffits(saveService: saveService),
            if (dropDownValue == 'Trim') Trim(saveService: saveService),
            if (dropDownValue == 'Fencing') Fencing(saveService: saveService),
            if (dropDownValue == 'Custom') Custom(saveService: saveService),
          ]),
        ),
      ),
    );
  }
}
