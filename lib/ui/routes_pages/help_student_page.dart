import 'package:flutter/material.dart';

class HelpStudentPage extends StatefulWidget {
  const HelpStudentPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HelpStudentPageState();
  }

}

class _HelpStudentPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Help Student"),
      ),
    );
  }
}