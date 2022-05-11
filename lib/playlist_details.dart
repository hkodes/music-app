

import 'package:flutter/material.dart';
import 'package:musicui/data.dart';

class PlaylistDetails extends StatelessWidget {
  final int? index;
  const PlaylistDetails({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Player details",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            //TODO:Navigating back
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              //TODO:more option
            },
            icon: const Icon(
              Icons.more_vert_rounded,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                  child: Image(
                image: AssetImage(playlist[0]["img"]),
                height: size.height * 0.25,
              ))),
          Center(
              child: Text(
            playlist[0]["name"],
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          )),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Center(
                child: Text(
              "COLDPLAY, KODALINE AND MANY MORE",
              style: TextStyle(
                color: Colors.black87,
                //  fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  //TODO:PLAY BUTTON
                },
                child: Container(
                  height: 50,
                  
                    width: size.width * 0.6,
                    decoration: const BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.all(Radius.circular(15))),
                    child:const Center(
                      child: Text(
                        "Play",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
             const SizedBox(width: 20,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius:const BorderRadius.all(Radius.circular(15)),
                  border: Border.all(color: Colors.black,),
                ),
                child: IconButton(
                    onPressed: () {
                      //TODO:NAVIGATION
                    },
                    icon: const Icon(
                      Icons.download,
                      color: Colors.blue,
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
