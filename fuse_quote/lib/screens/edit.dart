import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  String dropDownValue = 'Siding';
  List<String> items = [
    'Siding',
    'Gutters',
    'Windows',
    'Driveway',
    'Roof',
    'Walkway',
    'Patio',
    'Deck',
    'Soffits',
    'Trim',
    'Fencing',
    'Custom'
  ];

  @override
  Widget build(BuildContext context) {
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
              //borderRadius: BorderRadius.circular(15),
            ),
          ]),
        ),
      ),
    );
  }
}
