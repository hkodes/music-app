import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicui/constants.dart';
import 'package:musicui/home.dart';

class PlayList extends StatefulWidget {
  const PlayList({Key? key}) : super(key: key);

  @override
  _PlayListState createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
            height: 50,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.redAccent),
                    child: Center(
                      child: Text(
                        'Continue',
                        style: buttontext,
                      ),
                    ),
                  ),
                ),
              ),
            )),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Hahoy!',
              style: headertext,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Pick some new genres for New Playlist',
                style: headertextsmall),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 10),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade300),
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                    hintText: "Try 'Jazz",
                    hintStyle: headertextsmall),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: MediaQuery.of(context).size.height * 0.62,
            width: double.infinity,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 0,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
              ),
              itemCount: 8,
              itemBuilder: (context, index) {
                return Container(
                  height: 140,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                          fit: BoxFit.scaleDown,
                          image: AssetImage('Assets/p${index}.png'))),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
