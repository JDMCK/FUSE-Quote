import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';
import 'package:csv/csv.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String url =
      'https://raw.githubusercontent.com/m1ndst0rmz/FUSE_Quote/main/FUSE_Quote_Pricing.csv';
  String? pricingDirectoryPath;
  File? pricingFile;
  Response? response;
  String? pricingContents;
  List<List<dynamic>>? pricingKeys;
  Map<String, double> pricingMap = {};

  void getPrices() async {
    // Get file path
    try {
      Directory directory = await getApplicationDocumentsDirectory();
      pricingDirectoryPath = directory.path;
      pricingFile = File('$pricingDirectoryPath/pricingData.csv');
    } catch (e) {
      throw Exception('Failed to get pricingFile path');
    }

    // Get prices from server
    try {
      response = await get(Uri.parse(url));
    } catch (e) {
      print('Failed to connect');
    }
    // Write csv to file
    try {
      pricingFile?.writeAsString(response!.body);
    } catch (e) {
      print('Failed to write');
    }

    // Convert string contents into map
    // Reading the file
    try {
      pricingContents = await pricingFile?.readAsString();
    } catch (e) {
      throw Exception('Failed to read data');
    }
    pricingKeys = const CsvToListConverter().convert(pricingContents);
    pricingKeys?.removeAt(0);
    pricingKeys?.map((service) {
      double value = service.last.toDouble();
      service.removeLast();
      pricingMap[service.join()] = value;
    }).toList();
    print(pricingMap);

    // Pushes data to home screen
    Navigator.popAndPushNamed(context, '/home', arguments: pricingMap);
  }

  @override
  void initState() {
    super.initState();
    getPrices();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/FUSE_logo.png'),
      ),
    );
  }
}
