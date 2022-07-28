import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showImage = false;

  List<Widget> _getChildren() {
    List<Widget> list = [const SizedBox(width: double.infinity)];

    if (_showImage) {
      list.addAll([
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Image.asset(
            'images/chest.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        const SizedBox(height: 8.0),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _showImage = false;
            });
          },
          child: const Text('Hurry Up, Hide Treasure!'),
        ),
      ]);
    } else {
      list.add(ElevatedButton(
        onPressed: () {
          setState(() {
            _showImage = true;
          });
        },
        child: const Text('Show Me!'),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('I AM RICH'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _getChildren(),
        ),
      ),
    );
  }
}
