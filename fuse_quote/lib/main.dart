import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fuse Quote'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
      ),
      body: Center(
        child: Image.asset('assets/images/FUSE_logo.png'),
      ),
    );
  }
}
