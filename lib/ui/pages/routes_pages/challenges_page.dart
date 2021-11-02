import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget{
  const ChallengePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ChallengePageState();
  }

}

class _ChallengePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Challenges"),
      ),
    );
  }
}