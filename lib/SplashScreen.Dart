import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:car/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(children: <Widget>[
            Image.network(
              'https://wallpaperaccess.com/full/184117.jpg', width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,
      fit: BoxFit.cover,
            ),
        Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MyImage(),
                    Text("RenCarzz",style: TextStyle(
                      shadows: [
                      Shadow(
                      blurRadius: 5.0,
                      color: Colors.deepOrangeAccent,
                      offset: Offset(3.0, 3.0),
                    ), ],
                      fontSize: 25,fontFamily: "Allessa Personal Use",
                    fontStyle: FontStyle.italic,color: Colors.white,
                ),
               ),
              ],
             ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20,),
                  CircularProgressIndicator(),
                  SizedBox(height: 20,),
                  Text("Rent ur Favr8 Car",
                      style: TextStyle(
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                        color: Color(0xfffffffff),
                   ),
                  ),
                ],
              ),
            ),
          ],
        ),
        ),
      ],),);
  }

void NavigateToLogin(){
    Timer(Duration(seconds: 10),()=> Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (BuildContext context) => LogInScreen())
    ));
}
 @override
  void initState() {
    super.initState();
    NavigateToLogin();
 }
}



class MyImage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    AssetImage image =  new AssetImage("assets/images/logo.png");
    Image logo = new Image(image: image,width: 100,height: 100,);
    return logo;
  }
}
