



import 'dart:async';
// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storeappfirebase/LogInScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SplashScreen();
  }

}
 class _SplashScreen extends State<SplashScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff000725),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MyImage(),
                    Text('store',style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic,color: Color(0xffff2fc3)),)
                  ],
                )
            ),
            Expanded(
              flex: 1,
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    SizedBox(height: 20,),
                    Text('Online store for every one',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 12
                          ,color: Color(0xffffffff)),)
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
  void NavigateToLogIn()
  {
    Timer(Duration(seconds: 5), ()=>Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context )=>LogInScreen()
        )

    ));

  }
    @override
  void initState() {
    super.initState();
    NavigateToLogIn();
  }

 }


// First we need to navigate in login screen
// ignore: non_constant_identifier_names

class MyImage  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage image=AssetImage("images/sslogo.png");
    Image logo= new Image(image: image,width: 70,height: 70,);

    return logo;
  }

}

