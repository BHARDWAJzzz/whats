import 'package:clone_whatsapp/pages_dart/calls.dart';
import 'package:clone_whatsapp/pages_dart/community.dart';
import 'package:clone_whatsapp/pages_dart/dash.dart';
import 'package:clone_whatsapp/pages_dart/splash.dart';
import 'package:clone_whatsapp/pages_dart/update.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {

  PageController _pageController = PageController();
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: buildPageView(context),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        selectedItemColor: Colors.teal.shade700,
        currentIndex: selectedPage,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () { },
                icon: Icon(Icons.chat),),
              label: "Chats"
          ),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.update_sharp),),
              label: "Updates"
          ),
          BottomNavigationBarItem(
              icon:IconButton(
                onPressed: () {},
                icon: Icon(Icons.people_alt_outlined),),
              label: "Communities"
          ),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.call_outlined),),
              label: "Calls"
          ),
        ],
      ),
    );
  }

  Widget buildPageView(BuildContext context) {
    return PageView(
      controller: _pageController,
      onPageChanged: (index){
        onPageChange(index);
      },
      children: [
        Builder(
          builder: (context) => Center(
            child: Dash(),
          ),
        ),
        Builder(
          builder: (context) => Center(
            child: Update(),
          ),
        ),
        Builder(
          builder: (context) => Center(
            child: Communities(),
          ),
        ),Builder(
          builder: (context) => Center(
            child: Calls(),
          ),
        ),
      ],
    );
  }
  onPageChange(int index){
    setState(() {
      selectedPage = index;
    });
  }

  void onTapped(int index) {
    setState(() {
      selectedPage = index;
    });
    _pageController.jumpToPage(index);
  }
}







