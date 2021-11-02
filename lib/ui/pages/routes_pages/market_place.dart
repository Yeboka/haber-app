import 'package:flutter/material.dart';

class MarketPlacePage extends StatefulWidget {
  const MarketPlacePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MarketPlacePageState();
  }

}

class _MarketPlacePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Market Place"),
      ),
    );
  }
}