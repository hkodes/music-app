import 'package:flutter/material.dart';
import 'package:musicui/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration:const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitHeight, image: AssetImage('Assets/back.png'))),
        child: ListView(
          children: [
          const  SizedBox(
              height: 10,
            ),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Column(
                    children:const [
                     Text(
                        'Good Evening,',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Shendy Rian',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon:const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      )),
                  Container(
                    margin:const EdgeInsets.only(left: 10),
                    height: 40,
                    width: 40,
                    decoration:const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'))),
                  )
                ],
              ),
            ),
          const  SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 220,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding:const EdgeInsets.only(left: 20),
                        child:
                            Image(image: AssetImage('Assets/p$index.png')));
                  }),
            ),
           const SizedBox(
              height: 20,
            ),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children:const [
                  Text(
                    'Trending Musicians',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'SFUIDisplay',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'see more',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'SFUIDisplay',
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          const  SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                            padding:const EdgeInsets.only(left: 20),
                            child: Image(
                                height: 120,
                                image: AssetImage(musician[index]["img"]))),
                       const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            musician[index]['name'],
                            style:const TextStyle(
                              fontSize: 17,
                              fontFamily: 'SFUIDisplay',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      const  Padding(
                          padding: EdgeInsets.only(left: 20, top: 5),
                          child: Text(
                            'ARTIST',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontFamily: 'SFUIDisplay',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Padding(
              padding:const  EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children:const [
                  Text(
                    'Special Playlist',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'SFUIDisplay',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'see more',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'SFUIDisplay',
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
           const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        //TODO:Nvigation
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                              padding:const EdgeInsets.only(left: 20),
                              child: Image(
                                  height: 120,
                                  image: AssetImage(playlist[index]["img"]))),
                        const  SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:const  EdgeInsets.only(left: 20),
                            child: Text(
                              playlist[index]['name'],
                              style:const TextStyle(
                                fontSize: 17,
                                fontFamily: 'SFUIDisplay',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding:const  EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              playlist[index]['sub'],
                              style:const TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                                fontFamily: 'SFUIDisplay',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children:const [
                  Text(
                    'Last Playing',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'SFUIDisplay',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'see more',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'SFUIDisplay',
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                            padding:const EdgeInsets.only(left: 20, top: 20),
                            child: Image(
                                height: 80,
                                image: AssetImage(playing[index]["img"]))),
                       const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding:const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                playing[index]['name'],
                                style:const TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'SFUIDisplay',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding:const  EdgeInsets.only(left: 20, top: 5),
                                child: Text(
                                  playing[index]['sub'],
                                  style:const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontFamily: 'SFUIDisplay',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
