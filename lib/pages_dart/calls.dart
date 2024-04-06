import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
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
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search_sharp,
                    color: Colors.white,
                    size: 25,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 25,
                  )),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 12, right: 12 , top: 10 , bottom: 8),
              height: 70,
              width: double.maxFinite,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.teal.shade600,
                    radius: 25,
                    child: Icon(Icons.link , color: Colors.white,),
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
                                        "Create call link",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight:
                                            FontWeight.w500),
                                      ),
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
                                        "Share a link for your whatsApp call",
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
            ),
            Padding(
              padding: EdgeInsets.only(left: 14 , top: 10 , bottom: 10),
              child: Text("Recent"),
            ),
            ...List.generate(profileImage.length, (index) => Container(
              padding: EdgeInsets.only(left: 12, right: 12 , top: 10 , bottom: 8),
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
                                      IconButton(
                                          onPressed: (){},
                                          icon: Icon(Icons.call ,  color: Colors.teal,))
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
                                        callSubtitle[index],
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
            ),)
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade700,
        onPressed: () {  },
        child: Icon(Icons.add_call ,color: Colors.white,),
      ),

    );
  }
}

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

List<String> callSubtitle = [
  "2 min ago",
  "3 hr ago",
  "yesterday",
  "2 day ago",
  "thu",
  "22 mar",
  "30 apr",
  "1 feb",
  "28 jan",
  "20 jan",
  "15 jan",
  "1 jan"
];