import 'package:flutter/material.dart';

class Communities extends StatefulWidget {
  const Communities({super.key});

  @override
  State<Communities> createState() => _CommunitiesState();
}

class _CommunitiesState extends State<Communities> {
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
                    Icons.menu,
                    color: Colors.white,
                    size: 25,
                  )),
            ],
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 420,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/community.png"))
              ),
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){},
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.teal.shade700,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Start your community",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
