//// Use this Page to set up Tab Bar and show all the screens according to the Design.

/*import 'package:flutter/material.dart';
import 'home.dart';
import 'signin.dart';
class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  int activeTab = 0;
  List barItems = [
    {
      "icon": Icons.home_outlined,
      "active_icon": Icons.home_rounded,
      "page": HomePage(),
      "title": ""
    },
    {
      "icon": Icons.search_outlined,
      "active_icon": Icons.search,
      "page": HomePage(),//ExplorePage(),
      "title": ""
    },
    {
      "icon": Icons.bookmark,
      "active_icon": Icons.bookmark,
      "page": HomePage(),//Saved(),
      "title": ""
    },
    {
      "icon": Icons.forum_outlined,
      "active_icon": Icons.forum_rounded,
      "page": HomePage(),//Messages(),
      "title": ""
    },
    {
      "icon": Icons.settings_outlined,
      "active_icon": Icons.settings_rounded,
      "page": HomePage(),//Settings(),
      "title": ""
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blue,// cardColor,
      body: getBarPage(),
      // bottomNavigationBar: getBottomBar1()
      bottomNavigationBar: getBottomBar(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }

  Widget getBarPage() {
    return IndexedStack(
        index: activeTab,
        children:
            List.generate(barItems.length, (index) => barItems[index]["page"]));
  }

  Widget getBottomBar() {
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.purple, Colors.redAccent]),
          borderRadius: BorderRadius.circular(20),
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(20),
          //   topRight: Radius.circular(20)
          // ),
          boxShadow: [
            BoxShadow(
                color: Colors.black,//shadowColor.withOpacity(0.1),
                blurRadius: 1,
                spreadRadius: 1,
                offset: Offset(0, 1))
          ]),
      child: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: List.generate(
                barItems.length,
                (index) => BottomBarItem(
                      activeTab == index
                          ? barItems[index]["active_icon"]
                          : barItems[index]["icon"],
                      "",
                      isActive: activeTab == index,
                      activeColor: Colors.white,
                      onTap: () {
                        setState(() {
                          activeTab = index;
                        });
                      },
                    ))),
      ),
    );
  }
}*/ 
