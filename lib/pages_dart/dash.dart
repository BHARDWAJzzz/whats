
import 'package:clone_whatsapp/pages_dart/setting.dart';
import 'package:flutter/material.dart';


class Dash extends StatefulWidget {
  const Dash({super.key});

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 25,
        backgroundColor: Colors.teal.shade700,
        title: Text(
          'WhatsApp',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                    size: 25,
                  )),
              PopupMenuButton(
                  constraints: BoxConstraints(minWidth: double.infinity , minHeight: 200 ),
                  icon: Icon(Icons.search_sharp , color: Colors.white,),
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              hintText: "Search"
                          ),
                        ))
                  ]
              ),
              PopupMenuButton(
                  icon: Icon(
                    Icons.more_vert_outlined,
                    color: Colors.white,
                  ),
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(child: Text("New group")),
                    PopupMenuItem(child: Text("New broadcast")),
                    PopupMenuItem(child: Text("Linked devices")),
                    PopupMenuItem(child: Text("Starred device")),
                    PopupMenuItem(child: Text("Payments")),
                    PopupMenuItem(
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Setting()));
                        }, child: Text("Setting"),)
                    )
                  ]),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            ...List.generate(
                chatTitle.length,
                    (index) => Container(
                  margin: EdgeInsets.only(bottom: 8),
                  padding: EdgeInsets.only(
                      left: 12, right: 12, top: 10, bottom: 8),
                  height: 70,
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(profileImage[index]),
                        radius: 25,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 70,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 32,
                                      color: Colors.white,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            chatTitle[index],
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight:
                                                FontWeight.w500),
                                          ),
                                          Text(
                                            "11:00 am",
                                            style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontWeight:
                                                FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Text(
                                            "Prerit : Today Meeting link",
                                            style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontSize: 15),
                                          ))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade700,
        child: Icon(
          Icons.mark_unread_chat_alt_outlined,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}

List<String> chatTitle = [
  "Tech bliss",
  "Prerit",
  "Chahat",
  "Collage",
  "Rahul",
  "Mohit",
  "Vira",
  "Jashan",
  "Daksh",
  " Rohan",
  "Rajat",
  "School"
];

List<String> profileImage = [
  "assets/images/img.png",
  "assets/images/pic2.png",
  "assets/images/my.png",
  "assets/images/pic4.png",
  "assets/images/pic2.png",
  "assets/images/my.png",
  "assets/images/img.png",
  "assets/images/pic4.png",
  "assets/images/my.png",
  "assets/images/pic2.png",
  "assets/images/pic3.png",
  "assets/images/my.png",
];
