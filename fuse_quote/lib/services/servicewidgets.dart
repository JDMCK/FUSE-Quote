import 'package:flutter/material.dart';
import 'package:fuse_quote/services/service.dart';

// Siding Widget
class Siding extends StatefulWidget {
  Siding({Key? key, required this.saveService}) : super(key: key);
  final Function saveService;
  @override
  State<Siding> createState() => _SidingState();
}

class _SidingState extends State<Siding> {
  Service service = Service(
      name: 'Siding',
      story: 1,
      quantity: null,
      size: null,
      quality: null,
      material: 'Vinyl',
      price: 0);

  // Story
  List<bool> isSelStory = [true, false, false];

  // Material
  List<bool> isSelMaterial = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          // ***STORY***
          Text(
            'Story:',
            style: TextStyle(fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
              child: ToggleButtons(
                children: [
                  Text('1'),
                  Text('2'),
                  Text('3'),
                ],
                isSelected: isSelStory,
                onPressed: (int index) {
                  if (!isSelStory[index]) {
                    setState(() {
                      service.story = index + 1;
                      for (int i = 0; i < isSelStory.length; i++) {
                        isSelStory[i] = i == index;
                      }
                    });
                  }
                },
                borderRadius: BorderRadius.circular(15),
                constraints: BoxConstraints(minHeight: 50, minWidth: 85),
              ),
            ),
          ),
          // ***MATERIAL***
          Text(
            'Material:',
            style: TextStyle(fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
              child: ToggleButtons(
                children: [
                  Text('Vinyl'),
                  Text('Brick'),
                  Text('Stucco'),
                  Text('Hardie\nBoard'),
                ],
                isSelected: isSelMaterial,
                onPressed: (int index) {
                  if (!isSelMaterial[index]) {
                    setState(() {
                      List<String> options = [
                        'Vinyl',
                        'Brick',
                        'Stucco',
                        'Hardie Board'
                      ];
                      service.material = options[index];
                      for (int i = 0; i < isSelMaterial.length; i++) {
                        isSelMaterial[i] = i == index;
                      }
                    });
                  }
                },
                borderRadius: BorderRadius.circular(15),
                constraints: BoxConstraints(minHeight: 50, minWidth: 85),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Center(
              child: SizedBox(
                height: 50,
                width: 300,
                child: TextButton(
                  child: Text('Save'),
                  onPressed: (() {
                    widget.saveService(service);
                  }),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 58, 154, 214)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}

class Gutters extends StatefulWidget {
  const Gutters({Key? key, required this.saveService}) : super(key: key);
  final Function saveService;
  @override
  State<Gutters> createState() => _GuttersState();
}

class _GuttersState extends State<Gutters> {
  Service service = Service(
      name: 'Gutters',
      story: 1,
      quantity: null,
      size: null,
      quality: 'Basic',
      material: null,
      price: 0);

  // Story
  List<bool> isSelStory = [true, false, false];

  // Quality
  List<bool> isSelQuality = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          // ***STORY***
          Text(
            'Story:',
            style: TextStyle(fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
              child: ToggleButtons(
                children: [
                  Text('1'),
                  Text('2'),
                  Text('3'),
                ],
                isSelected: isSelStory,
                onPressed: (int index) {
                  if (!isSelStory[index]) {
                    setState(() {
                      service.story = index + 1;
                      for (int i = 0; i < isSelStory.length; i++) {
                        isSelStory[i] = i == index;
                      }
                    });
                  }
                },
                borderRadius: BorderRadius.circular(15),
                constraints: BoxConstraints(minHeight: 50, minWidth: 85),
              ),
            ),
          ),
          // ***QUALITY***
          Text(
            'Quality:',
            style: TextStyle(fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
              child: ToggleButtons(
                children: [
                  Text('Basic'),
                  Text('Deluxe'),
                  Text('Brightening'),
                ],
                isSelected: isSelQuality,
                onPressed: (int index) {
                  if (!isSelQuality[index]) {
                    setState(() {
                      List<String> options = [
                        'Basic',
                        'Deluxe',
                        'Brightening',
                      ];
                      service.quality = options[index];
                      for (int i = 0; i < isSelQuality.length; i++) {
                        isSelQuality[i] = i == index;
                      }
                    });
                  }
                },
                borderRadius: BorderRadius.circular(15),
                constraints: BoxConstraints(minHeight: 50, minWidth: 85),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Center(
              child: SizedBox(
                height: 50,
                width: 300,
                child: TextButton(
                  child: Text('Save'),
                  onPressed: (() {
                    widget.saveService(service);
                  }),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 58, 154, 214)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}

class Window extends StatefulWidget {
  const Window({Key? key, required this.saveService}) : super(key: key);
  final Function saveService;

  @override
  State<Window> createState() => _WindowState();
}

class _WindowState extends State<Window> {
  Service service = Service(
      name: 'Window',
      story: 1,
      quantity: 1,
      size: 'Small',
      quality: null,
      material: null,
      price: 0);

  // Story
  List<bool> isSelStory = [true, false, false];

  // Quantity
  int quantity = 1;

  // Size
  List<bool> isSelSize = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          // ***STORY***
          Text(
            'Story:',
            style: TextStyle(fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
              child: ToggleButtons(
                children: [
                  Text('1'),
                  Text('2'),
                  Text('3'),
                ],
                isSelected: isSelStory,
                onPressed: (int index) {
                  if (!isSelStory[index]) {
                    setState(() {
                      service.story = index + 1;
                      for (int i = 0; i < isSelStory.length; i++) {
                        isSelStory[i] = i == index;
                      }
                    });
                  }
                },
                borderRadius: BorderRadius.circular(15),
                constraints: BoxConstraints(minHeight: 50, minWidth: 85),
              ),
            ),
          ),
          // ***QUANTITY***
          Text(
            'Quantity:',
            style: TextStyle(fontSize: 25),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: (() {
                  setState(
                    () {
                      quantity--;
                      service.quantity = quantity;
                    },
                  );
                }),
              ),
              Container(
                child: SizedBox(
                  width: 75,
                  height: 50,
                  child: Center(
                    child: Text(
                      '$quantity',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 250, 250, 250),
                    border: Border.all(
                      color: Color.fromARGB(255, 58, 154, 214),
                    ),
                    borderRadius: BorderRadius.circular(15)),
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: (() {
                  setState(
                    () {
                      quantity++;
                      service.quantity = quantity;
                    },
                  );
                }),
              )
            ],
          ),
          // ***QUALITY***
          Text(
            'Size:',
            style: TextStyle(fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
              child: ToggleButtons(
                children: [
                  Text('Small'),
                  Text('Large'),
                  Text('Extra\nLarge'),
                ],
                isSelected: isSelSize,
                onPressed: (int index) {
                  if (!isSelSize[index]) {
                    setState(() {
                      List<String> options = [
                        'Small',
                        'Large',
                        'Extra\nLarge',
                      ];
                      service.size = options[index];
                      for (int i = 0; i < isSelSize.length; i++) {
                        isSelSize[i] = i == index;
                      }
                    });
                  }
                },
                borderRadius: BorderRadius.circular(15),
                constraints: BoxConstraints(minHeight: 50, minWidth: 85),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Center(
              child: SizedBox(
                height: 50,
                width: 300,
                child: TextButton(
                  child: Text('Save'),
                  onPressed: (() {
                    widget.saveService(service);
                  }),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 58, 154, 214)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
