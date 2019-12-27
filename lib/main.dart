import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  int number = 0;

  void changeNumHandler () {
    number+= 1;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing'),
      ),
      body: Center(child: Text('$number')),
      backgroundColor: Colors.blue.shade200,
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(changeNumHandler),
        tooltip: 'Text Changer',
        child: const Icon(Icons.add),
      ),
    );
  }
}