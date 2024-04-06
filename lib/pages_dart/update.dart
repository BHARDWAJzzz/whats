import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
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
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Status" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),),
                IconButton(onPressed: (){},
                    icon: Icon(Icons.menu))
              ],
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/my.png"),
                    radius: 32,
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("My Status" , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500)),
                          Text("Tap to add status update" , style: TextStyle(fontSize: 15 , color: Colors.grey.shade700),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Viewed updates" , style: TextStyle(color: Colors.grey.shade700),),
                IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down_outlined , color: Colors.grey.shade700,))
              ],
            ),
            Divider(color: Colors.grey,)
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 50,
            height: 50,
            child: FloatingActionButton(
              backgroundColor: Colors.teal.shade50,
              onPressed: (){},
              child: IconButton(
                onPressed: () {  },
                icon: Icon(Icons.draw , color: Colors.teal.shade900,),),
            ),
          ),
          SizedBox(height: 25),
          FloatingActionButton(
            backgroundColor: Colors.teal.shade700,
            onPressed: () { },
            child: IconButton(
              icon: Icon(Icons.camera_alt ,color: Colors.white,),
              onPressed: (){},),
          ),

        ],
      ),
    );
  }
}
