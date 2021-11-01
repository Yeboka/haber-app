import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[SizedBox(
          height: 500,
          child: functionTile(context))],
    );
  }

  Widget functionTile(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return GridView.count(
      primary: false,
      crossAxisSpacing: 1,
      childAspectRatio: itemHeight / itemWidth,
      mainAxisSpacing: 1,
      crossAxisCount: 2,
      children: [
        getCard("Lost and Found", const Icon(Icons.remove_red_eye)),
        getCard("Lost and Found", const Icon(Icons.remove_red_eye)),
        getCard("Lost and Found", const Icon(Icons.remove_red_eye)),
        getCard("Lost and Found", const Icon(Icons.remove_red_eye))
      ],
    );
  }

  Widget getCard(String text, Icon icon) {
    return SizedBox(
      width: 100,
      height: 50,
      child: Card(
        elevation: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: ListTile(
          leading: Text(text),

          onTap: () {
            print("Hello");
          },
        )
      ),
    );
  }
}
