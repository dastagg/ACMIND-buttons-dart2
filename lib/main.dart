import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Old vs New Buttons - Dart2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  color: Colors.blue[900],
                  textColor: Colors.white,
                  child: const Text('A Raised Button'),
                  onPressed: () {
                    // print('Raised button pressed');
                  },
                ),
                const SizedBox(width: 20.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // primary is background color
                    primary: Colors.blue[900],
                    // onPrimary (foregroundColor) is the color of the text or icon "On top" of the primary color.
                    onPrimary: Colors.white,
                  ),
                  // style: ButtonStyle(
                  //   backgroundColor: MaterialStateProperty.all(Colors.blue[900]),
                  //   foregroundColor: MaterialStateProperty.all(Colors.white),
                  // ),
                  onPressed: () {
                    // print('Elevated button pressed');
                  },
                  child: const Text('An Elevated button'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () {
                    // print('Flat button pressed');
                  },
                  child: const Text('A Flat Button'),
                  textColor: Colors.blue,
                ),
                const SizedBox(width: 20.0),
                TextButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.blue,
                  ),
                  onPressed: () {
                    // print('Text button pressed');
                  },
                  child: const Text('A Text Button'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlineButton(
                  onPressed: () {
                    // print('Outline button pressed');
                  },
                  child: const Text('An Outline Button'),
                  textColor: Colors.blue,
                  borderSide: const BorderSide(color: Colors.blue),
                ),
                const SizedBox(width: 20.0),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.blue,
                    onSurface: Colors.white,
                    backgroundColor: Colors.white,
                    elevation: 5.0,
                    shadowColor: Colors.white,
                    side: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  onPressed: () {
                    // print('Outlined button pressed');
                  },
                  child: const Text('An Outlined button'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
