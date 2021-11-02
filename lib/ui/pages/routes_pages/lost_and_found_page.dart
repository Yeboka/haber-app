import 'package:flutter/material.dart';

class LostAndFoundPage extends StatefulWidget {
  const LostAndFoundPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LostAndFoundPageState();
  }

}

class _LostAndFoundPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lost and Found"),
      ),
    );
  }

}