// Flutter code sample for FloatingActionButton

// This example shows how to make an extended [FloatingActionButton] in a
// [Scaffold], with a  pink [backgroundColor], a thumbs up [Icon] and a
// [Text] label that reads "Approve".
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/material/floating_action_button_label.png)

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gota Delivery'),
      ),
      body: Center(
        child: const Text('Aperte o botão abaixo para Gotejar seus pensamentos'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
          showDialog(context: "Ola"),
        },
        label: Text('Peça Já'),
        icon: Icon(Icons.thumb_up),
        backgroundColor: Colors.deepOrange,
      ),
    );
  }
}