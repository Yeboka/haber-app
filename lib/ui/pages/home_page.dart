import 'package:flutter/material.dart';
import 'package:haber_app/ui/pages/routes_pages/challenges_page.dart';
import 'package:haber_app/ui/pages/routes_pages/help_student_page.dart';
import 'package:haber_app/ui/pages/routes_pages/lost_and_found_page.dart';
import 'package:haber_app/ui/pages/routes_pages/market_place.dart';

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
    final size = MediaQuery.of(context).size;
    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    //TODO Use Structure in Navigator and Routing. Implement to here
    final manageRouting = {
      "Lost and Found": () => {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const LostAndFoundPage()))
          },
      "Market Place": () => {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MarketPlacePage()))
          },
      "Challenges": () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ChallengePage()))
          },
      "Helping students": () => {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const HelpStudentPage()))
          }
    };
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "Applications",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        SizedBox(
            height: itemHeight,
            width: double.infinity,
            child: functionTile(itemHeight, itemWidth, manageRouting)),
      ],
    );
  }

  /// We return some Application function using Card.
  /// In this method we will create Containers with Grid view.
  /// For example: we have 4 applications, and I want to see
  /// 2 card in Row, and 2 in Column.
  /// it will to create this
  /// It using childAspectRatio, he checked size height, width
  /// and it creating container with size Height / Width
  Widget functionTile(
      var itemHeight, var itemWidth, Map<String, Function> manageRouting) {
    return GridView.count(
      primary: true,
      crossAxisSpacing: 1,
      childAspectRatio: itemHeight / itemWidth,
      mainAxisSpacing: 1,
      crossAxisCount: 2,
      children: [
        getCard("Lost and Found", "assets/images/icons/red_color.png",
            manageRouting["Lost and Found"]),
        getCard("Market Place", "assets/images/icons/red_color.png",
            manageRouting["Market Place"]),
        getCard("Challenges", "assets/images/icons/red_color.png",
            manageRouting["Challenges"]),
        getCard("Helping students", "assets/images/icons/red_color.png",
            manageRouting["Helping students"])
      ],
    );
  }

  /// Get Card in Main page.
  /// For Example We want ot add 4 Widget when if we click to Card,
  /// it will go to other page using Routing
  /// Card will return Container with Text and Background image.
  Widget getCard(String text, String assetPath, var functionRoute) {
    return SizedBox(
      width: 100,
      height: 50,
      child: Card(
          semanticContainer: true,
          elevation: 10,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(assetPath))),
            child: ListTile(
              trailing: Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: functionRoute,
              enabled: true,
              tileColor: Colors.white,
            ),
          )),
    );
  }
}
