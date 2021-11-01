import 'package:flutter/material.dart';

class EventsHomeWidget extends StatefulWidget {
  const EventsHomeWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _EventsHomeWidgetState();
  }

}

class _EventsHomeWidgetState extends State<EventsHomeWidget> {
  @override
  Widget build(BuildContext context) {
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.start,
    //   children: [
    //     Text("Events"),
    //
    //   ],
    // );
    return Column(
      children : [
        // A Row for the top
        Row(children: [ Text('Group Name'), Icon(Icons.event_available)] ),
        //For the Line
        // Divider(height, thickness etc...),
        // A Row for each Row in the table from now on
        //VerticalDivider for the vertical line, just as Divider
        Row(children :[ Text('price1'),  VerticalDivider(), Text('1')],
          // be carefull with the $ since it's used to put variables
          // into strings, eg Text('Name : $name ')
        ),
      ],
    );
  }

}