import 'package:flutter/material.dart';
import 'package:fuse_quote/services/service.dart';

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

class Windows extends StatefulWidget {
  const Windows({Key? key, required this.saveService}) : super(key: key);
  final Function saveService;

  @override
  State<Windows> createState() => _WindowsState();
}

class _WindowsState extends State<Windows> {
  Service service = Service(
      name: 'Windows',
      story: 1,
      quantity: 1,
      size: 'Regular',
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
          // ***SIZE***
          Text(
            'Size:',
            style: TextStyle(fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
              child: ToggleButtons(
                children: [
                  Text('Regular'),
                  Text('Large'),
                  Text('Extra\nLarge'),
                ],
                isSelected: isSelSize,
                onPressed: (int index) {
                  if (!isSelSize[index]) {
                    setState(() {
                      List<String> options = [
                        'Regular',
                        'Large',
                        'Extra Large',
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

class Driveway extends StatefulWidget {
  const Driveway({Key? key, required this.saveService}) : super(key: key);
  final Function saveService;

  @override
  State<Driveway> createState() => _DrivewayState();
}

class _DrivewayState extends State<Driveway> {
  Service service = Service(
      name: 'Driveway',
      story: null,
      quantity: null,
      size: 'Regular',
      quality: null,
      material: null,
      price: 0);

  // Size
  List<bool> isSelSize = [false, true, false];

  // Quality
  List<bool> isSelQuality = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          // ***SIZE***
          Text(
            'Size:',
            style: TextStyle(fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
              child: ToggleButtons(
                children: [
                  Text('1 Car'),
                  Text('2 Car'),
                  Text('3 Car'),
                ],
                isSelected: isSelSize,
                onPressed: (int index) {
                  if (!isSelSize[index]) {
                    setState(() {
                      List<String> options = [
                        'Regular',
                        'Large',
                        'Extra Large',
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
                  Text('Walkway'),
                ],
                isSelected: isSelQuality,
                onPressed: (int index) {
                  if (!isSelQuality[index]) {
                    setState(() {
                      List<String> options = [
                        'Basic',
                        'Deluxe',
                        'Walkway',
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

class Roof extends StatefulWidget {
  const Roof({Key? key, required this.saveService}) : super(key: key);
  final Function saveService;
  @override
  State<Roof> createState() => _RoofState();
}

class _RoofState extends State<Roof> {
  Service service = Service(
      name: 'Roof',
      story: 1,
      quantity: null,
      size: null,
      quality: null,
      material: 'Asphalt',
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
          // ***Story***
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
                  Text('Asphalt'),
                  Text('Tile'),
                  Text('Metal'),
                  Text('Cedar\nShake'),
                ],
                isSelected: isSelMaterial,
                onPressed: (int index) {
                  if (!isSelMaterial[index]) {
                    setState(() {
                      List<String> options = [
                        'Asphalt',
                        'Tile',
                        'Metal',
                        'Cedar Shake'
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

class Patio extends StatefulWidget {
  const Patio({Key? key, required this.saveService}) : super(key: key);
  final Function saveService;
  @override
  State<Patio> createState() => _PatioState();
}

class _PatioState extends State<Patio> {
  Service service = Service(
      name: 'Patio',
      story: null,
      quantity: null,
      size: 'Regular',
      quality: 'Basic',
      material: null,
      price: 0);

  // Size
  List<bool> isSelSize = [true, false, false];

  // Quality
  List<bool> isSelQuality = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          // ***SIZE***
          Text(
            'Size:',
            style: TextStyle(fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
              child: ToggleButtons(
                children: [
                  Text('Regular'),
                  Text('Large'),
                  Text('Extra\nLarge'),
                ],
                isSelected: isSelSize,
                onPressed: (int index) {
                  if (!isSelSize[index]) {
                    setState(() {
                      List<String> options = [
                        'Regular',
                        'Large',
                        'Extra Large',
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

class Deck extends StatefulWidget {
  const Deck({Key? key, required this.saveService}) : super(key: key);
  final Function saveService;
  @override
  State<Deck> createState() => _DeckState();
}

class _DeckState extends State<Deck> {
  Service service = Service(
      name: 'Deck',
      story: null,
      quantity: null,
      size: 'Regular',
      quality: 'Basic',
      material: null,
      price: 0);

  // Size
  List<bool> isSelSize = [false, true, false];

  // Quality
  List<bool> isSelQuality = [true, false];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          // ***SIZE***
          Text(
            'Size:',
            style: TextStyle(fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
              child: ToggleButtons(
                children: [
                  Text('Regular'),
                  Text('Large'),
                  Text('Extra\nLarge'),
                ],
                isSelected: isSelSize,
                onPressed: (int index) {
                  if (!isSelSize[index]) {
                    setState(() {
                      List<String> options = [
                        'Regular',
                        'Large',
                        'Extra Large',
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
                ],
                isSelected: isSelQuality,
                onPressed: (int index) {
                  if (!isSelQuality[index]) {
                    setState(() {
                      List<String> options = [
                        'Basic',
                        'Deluxe',
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

class Soffits extends StatefulWidget {
  const Soffits({Key? key, required this.saveService}) : super(key: key);
  final Function saveService;
  @override
  State<Soffits> createState() => _SoffitsState();
}

class _SoffitsState extends State<Soffits> {
  Service service = Service(
      name: 'Soffits',
      story: 1,
      quantity: null,
      size: null,
      quality: null,
      material: null,
      price: 0);

  List<bool> isSelStory = [true, false, false];

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

class Trim extends StatefulWidget {
  const Trim({Key? key, required this.saveService}) : super(key: key);
  final Function saveService;
  @override
  State<Trim> createState() => _TrimState();
}

class _TrimState extends State<Trim> {
  Service service = Service(
      name: 'Trim',
      story: 1,
      quantity: null,
      size: null,
      quality: 'Cleaning',
      material: null,
      price: 0);

  // Story
  List<bool> isSelStory = [true, false, false];
  // Quality
  List<bool> isSelQuality = [true, false];

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

class Fencing extends StatefulWidget {
  const Fencing({Key? key, required this.saveService}) : super(key: key);
  final Function saveService;
  @override
  State<Fencing> createState() => _FencingState();
}

class _FencingState extends State<Fencing> {
  Service service = Service(
      name: 'Fencing',
      story: null,
      quantity: 10,
      size: null,
      quality: null,
      material: null,
      price: 0);

  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          // ***QUANTITY***
          Text(
            'Panel Count:',
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

class Custom extends StatefulWidget {
  const Custom({Key? key, required this.saveService}) : super(key: key);
  final Function saveService;
  @override
  State<Custom> createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  Service service = Service(
      name: 'Unnamed Service',
      story: null,
      quantity: null,
      size: null,
      quality: null,
      material: null,
      price: 0);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          // ***NAME***
          Text(
            'Name:',
            style: TextStyle(fontSize: 25),
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Enter custom name'),
          ),
          // ***PRICE***
          Text(
            'Price:',
            style: TextStyle(fontSize: 25),
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Enter price'),
            keyboardType: TextInputType.number,
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
