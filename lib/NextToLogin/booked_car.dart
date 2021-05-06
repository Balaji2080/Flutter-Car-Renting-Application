import 'dart:async';
import 'dart:ui';

import 'package:car/NextToLogin/showroom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuccesfullyBooked extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _SuccesfullyBooked();
  }
}

class _SuccesfullyBooked extends State<SuccesfullyBooked> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(children: <Widget>[
        Center (
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 200,),
              MyImaget(),
              Container(
                child: Padding(padding: EdgeInsets.fromLTRB(10,20,10,20),
                    child: Text("Successfully\n"
                        "         Booked",
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            blurRadius: 5.0,
                            color: Colors.deepOrangeAccent,
                            offset: Offset(3.0, 3.0),
                          ),
                        ],
                        fontSize: 50,
                      fontFamily: "Allessa Personal Use",fontStyle: FontStyle.italic,color: Colors.redAccent,
                    ),
                    ),
                ),
              ),

            ],
          ),
        ),
      ],),);
  }

  void NavigateToLogin(){
    Timer(Duration(seconds: 4),()=> Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => Showroom())
    ));
  }
  @override
  void initState() {
    super.initState();
    NavigateToLogin();
  }
}



class MyImaget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    AssetImage image =  new AssetImage("assets/images/success.jpg");
    Image logo = new Image(image: image,width: 250,height: 250,);
    return logo;
  }
}
