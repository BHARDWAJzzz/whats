
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade700,
        title: Text("Profile" , style: TextStyle(color: Colors.white, fontSize: 25),),
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/my.png"),
              radius: 80,
              // child: Badge(
              //   alignment: Alignment.bottomRight,
              //   offset: Offset(0, 100),
              // ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Name",style: TextStyle(color: Colors.grey.shade700)),
            subtitle: Text("Tushar Bhardwaj" ,style: TextStyle(fontSize: 16,color: Colors.black),),
            trailing: Icon(Icons.create),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 55 , right: 30),
            child: Text("This is not your username or pin. This name will be visible to your whatsapp contacts" , maxLines: 2,
              style: TextStyle(color: Colors.grey.shade700),),
          ),
          SizedBox(height: 18,),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("About"),
            subtitle: Text("Jai shree Ram"),
            trailing: Icon(Icons.create),
          ),
          Divider(color: Colors.grey, thickness: 0.5,),
          ListTile(
            leading: Icon(Icons.call),
            title: Text("Phone"),
            subtitle: Text("+91 7351471810"),
          ),
        ],
      ),
    );
  }
}
