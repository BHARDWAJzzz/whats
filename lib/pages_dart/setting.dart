import 'package:clone_whatsapp/pages_dart/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade700,
        title: Text("Setting" , style: TextStyle(color: Colors.white, fontSize: 25),),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search_sharp , color: Colors.white,))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 18,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
              },
              child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/my.png"),
                    radius: 30,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("TUSHAR BHARDWAJ"),
                      Text("Jai shree Ram")
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down_circle_outlined)

              ),
            ),
            SizedBox(height: 25,),
            ...List.generate(10, (index) => Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.only(left: 28),
                  leading: icons[index],
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title[index]),
                      Text("Security notification , change number" , style: TextStyle(color: Colors.grey.shade700 , fontSize: 14),)
                    ],
                  ),
                ),
                SizedBox(height: 15,),
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}
List<Icon> icons = [
  Icon(Icons.key) ,
  Icon(Icons.lock),
  Icon(Icons.child_care_outlined),
  Icon(Icons.chat),
  Icon(Icons.notifications),
  Icon(Icons.data_saver_off_outlined),
  Icon(Icons.language),
  Icon(Icons.help_outline),
  Icon(Icons.people_alt_outlined),
  Icon(Icons.save_alt),
];

List<String> title = [
  "Account",
  "Privacy",
  "Avatar",
  "Chats",
  "Notification",
  "Storage and Data",
  "App language ",
  "Help",
  "Invite friend",
  "save",
];
