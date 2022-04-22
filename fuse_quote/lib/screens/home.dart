import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double totalCost = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 60, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                '\$$totalCost',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 160, 0),
                  fontSize: 40,
                ),
              ),
            ),
            Divider(
              thickness: 2,
              color: Color.fromARGB(255, 160, 160, 160),
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
