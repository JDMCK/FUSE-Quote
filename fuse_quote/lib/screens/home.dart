import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fuse_quote/service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double totalPrice = 0;

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
                children: [
                  ServiceCard(service: Service(name: 'windo')),
                  ServiceCard(
                      service: Service(name: 'buidlaj', quality: 'stuoffds'))
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    Key? key,
    required this.service,
  }) : super(key: key);

  final Service service;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${service.name}',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    '\$${service.price}',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    service.quantity != null
                        ? Text('quantity: ${service.quantity}',
                            style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic))
                        : Container(),
                    service.size != null
                        ? Text('size: ${service.size}',
                            style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic))
                        : Container(),
                    service.quality != null
                        ? Text('quality: ${service.quality}',
                            style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic))
                        : Container(),
                    service.story != null
                        ? Text('story: ${service.story}',
                            style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic))
                        : Container(),
                  ],
                ),
              )
            ],
          )),
      color: Color.fromARGB(255, 58, 154, 214),
    );
  }
}
