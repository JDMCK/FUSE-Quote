// import 'dart:developer';
// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fuse_quote/services/service.dart';
import 'package:fuse_quote/services/servicecard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Service> ServiceList = [
    Service(name: "window", price: 23.56),
    Service(name: "door", price: 49.32)
  ];
  double totalPrice = 0;

  double getTotalPrice(List<Service> services) {
    double price = 0;
    for (var s in services) {
      price += s.price;
    }
    return price;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 58, 154, 214),
        title: Image.asset(
          'assets/images/FUSE_logo_white.png',
          scale: 7,
        ),
        toolbarHeight: 75,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Center(
            child: Text(
              '\$$totalPrice',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 160, 0),
                fontSize: 40,
              ),
            ),
          ),
          Divider(
            thickness: 2,
            color: Color.fromARGB(255, 160, 160, 160),
            height: 50,
          ),
          Expanded(
              child: Container(
            child: ListView(
                children:
                    ServiceList.map((service) => ServiceCard(service: service))
                        .toList()),
          )),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/edit');
        },
        child: Icon(
          Icons.add_rounded,
          size: 40,
        ),
        backgroundColor: Color.fromARGB(255, 58, 154, 214),
      ),
    );
  }
}
