import 'package:flutter/material.dart';
import 'package:haber_app/ui/pages/routes_pages/messenger_chat.dart';

class MessengerPage extends StatefulWidget {
  const MessengerPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MessengerPageState();
  }
}

class _MessengerPageState extends State {
  final jsonMap = [
    {
      "avatar": "assets/images/icons/red_color.png",
      "title": "Entrepreneurship",
      "idChat": 1,
      "readIcon": false,
    },
    {
      "avatar": "assets/images/icons/red_color.png",
      "title": "Computer Since",
      "idChat": 2,
      "readIcon": false,
    },
    {
      "avatar": "assets/images/icons/red_color.png",
      "title": "SDU Chat",
      "idChat": 3,
      "readIcon": true,
    },
    {
      "avatar": "assets/images/icons/red_color.png",
      "title": "WOWWO",
      "idChat": 4,
      "readIcon": true,
    }
  ];

  @override
  Widget build(BuildContext context) {
    List<String> title = [];
    List<String> avatar = [];
    List<bool> readIcon = [];
    List<int> idChat = [];
    for (int i = 0; i < jsonMap.length; i++) {
      for (var element in jsonMap[i].entries) {
        if (element.key == "title") {
          title.add(element.value as String);
        } else if (element.key == "avatar") {
          avatar.add(element.value as String);
        } else if (element.key == "readIcon") {
          readIcon.add(element.value as bool);
        } else if (element.key == "idChat") {
          idChat.add(element.value as int);
        }
      }
    }

    return ListView.builder(
        itemCount: jsonMap.length,
        padding: const EdgeInsets.all(5),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.5),
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Center(
                child: ListTile(
                  dense: true,
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(avatar[index]),
                    //TODO add image when image is error
                    // onBackgroundImageError: ,
                    // onForegroundImageError: ,
                  ),
                  title: Text(
                    title[index],
                    style:
                        const TextStyle(fontSize: 16, color: Colors.blueGrey),
                  ),
                  trailing: readIcon[index]
                      ? null
                      : const Icon(
                          Icons.circle,
                          color: Colors.blueAccent,
                          size: 14,
                        ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MessengerChat(idChat: idChat[index])));
                  },
                ),
              ),
            ),
          );
        });
  }
}
