import 'package:flutter/material.dart';
import 'package:fuse_quote/services/service.dart';

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
