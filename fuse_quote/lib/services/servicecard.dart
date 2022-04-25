import 'package:flutter/material.dart';
import 'package:fuse_quote/services/service.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    Key? key,
    required this.service,
    required this.remove,
  }) : super(key: key);

  final Service service;
  final Function remove;

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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      service.story != null
                          ? Text('Story: ${service.story}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic))
                          : Container(),
                      service.quantity != null
                          ? Text('Qty: ${service.quantity}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic))
                          : Container(),
                      service.size != null
                          ? Text('Size: ${service.size}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic))
                          : Container(),
                      service.quality != null
                          ? Text('Qlty: ${service.quality}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic))
                          : Container(),
                      service.material != null
                          ? Text('Mtrl: ${service.material}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic))
                          : Container(),
                    ],
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                    onPressed: (() {
                      remove(service);
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      color: Color.fromARGB(255, 58, 154, 214),
    );
  }
}
