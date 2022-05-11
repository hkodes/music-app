import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:musicui/home.dart';
import 'package:musicui/playlist.dart';
import 'package:musicui/signin.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool? checkb = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration:const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('Assets/image1.png'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin:const EdgeInsets.only(top: 220),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(23),
              child: ListView(
                children: <Widget>[
                const  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sing Up First',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'SFUIDisplay',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                 const SizedBox(
                    height: 5,
                  ),
                 const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Hello there, sign up to continue',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontFamily: 'SFUIDisplay',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.fromLTRB(0, 35, 0, 20),
                    child: Container(
                      color: const Color(0xfff5f5f5),
                      child: TextFormField(
                        style:const TextStyle(
                            color: Colors.black, fontFamily: 'SFUIDisplay'),
                        decoration:const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Name',
                            prefixIcon: Icon(Icons.person_outline),
                            labelStyle: TextStyle(fontSize: 15)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Container(
                      color: const Color(0xfff5f5f5),
                      child: TextFormField(
                        style:const TextStyle(
                            color: Colors.black, fontFamily: 'SFUIDisplay'),
                        decoration:const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email Address',
                            prefixIcon: Icon(Icons.person_outline),
                            labelStyle: TextStyle(fontSize: 15)),
                      ),
                    ),
                  ),
                  Container(
                    color: const Color(0xfff5f5f5),
                    child: TextFormField(
                      obscureText: true,
                      style:const TextStyle(
                          color: Colors.black, fontFamily: 'SFUIDisplay'),
                      decoration:const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock_outline),
                          labelStyle: TextStyle(fontSize: 15)),
                    ),
                  ),
                  Padding(
                      padding:
                         const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Checkbox(
                              value: checkb,
                              onChanged: (value) {
                                checkb = value;
                              }),
                         const Text(
                              'By creating your accoutn, you aggree\n to our Terms and Condition')
                        ],
                      )),
                  Padding(
                    padding:const EdgeInsets.only(top: 20),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                            builder: (context) =>const  PlayList(),
                          ),
                        );
                      }, //since this is only a UI app
                      child:const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'SFUIDisplay',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color:const Color(0xffff2d55),
                      elevation: 0,
                      minWidth: 400,
                      height: 50,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(top: 30),
                    child: InkWell(
                      onTap: () => Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                          builder: (context) =>const  SignIn(),
                        ),
                      ),
                      child: Center(
                        child: RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                                text: "Already have an account?",
                                style: TextStyle(
                                  fontFamily: 'SFUIDisplay',
                                  color: Colors.black,
                                  fontSize: 15,
                                )),
                            TextSpan(
                                text: "  Sign In",
                                style: TextStyle(
                                  fontFamily: 'SFUIDisplay',
                                  color: Color(0xffff2d55),
                                  fontSize: 15,
                                ))
                          ]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
