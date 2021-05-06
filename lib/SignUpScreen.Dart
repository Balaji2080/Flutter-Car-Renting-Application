import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'LoginScreen.dart';
import 'NextToLogin/showroom.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUpScreen();
  }
}

class _SignUpScreen extends State<SignUpScreen> {
 String email = "" ,password= "";
  var _formkey = GlobalKey<FormState>();

  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> register() async{
    await auth.createUserWithEmailAndPassword(email: email.trim(),password: password).then((value){
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Showroom()));

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Form(
        key: _formkey,
      child: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 220,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,

                children: <Widget>[
                  SizedBox(height: 50,),
                  Text("Sign Up",
                    style: TextStyle(shadows: [
                      Shadow(
                        blurRadius: 5.0,
                        color: Colors.deepOrange,
                        offset: Offset(3.0, 3.0),
                      ),
                    ],fontFamily: "Allessa Personal Use",color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),
                  ),
                  Text("Welcome to RenCarz",
                    style: TextStyle(fontFamily: "Allessa Personal Use",color: Colors.deepPurple),)

                ],
              ),
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(150)),
              color: const Color.fromRGBO(255, 255, 255, 0.19),
              image: new DecorationImage(
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.9), BlendMode.dstATop),
                image: new AssetImage('assets/images/sign2.jpg'),
                
              ),
            ),

          ),

          Theme(
            data: ThemeData(
                hintColor: Colors.white
            ),

            child: Padding(padding: EdgeInsets.only(top: 50,right: 20,left: 20),
              child: TextFormField(
                validator: (value){
                  if (value.isEmpty){
                    return "Please Enter User Name";
                  }
                  return null;
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "User Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Color(0xffff2fc3),width: 1)
                  ),

                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Color(0xffff2fc3),width: 1)
                  ),

                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Color(0xffff2fc3),width: 1)
                  ),

                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Color(0xffff2fc3),width: 1)
                  ),
                ),
              ),
            ),
          ),


          Theme(
            data: ThemeData(
                hintColor: Colors.white
            ),

            child: Padding(padding: EdgeInsets.only(top: 20,right: 20,left: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (value){
                  if (value.isEmpty){
                    return "Please Enter Email";
                  }else{
                    email = value;
                  }
                  return null;
                },

                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Color(0xffff2fc3),width: 1)
                  ),

                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Color(0xffff2fc3),width: 1)
                  ),

                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Color(0xffff2fc3),width: 1)
                  ),

                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Color(0xffff2fc3),width: 1)
                  ),
                ),
              ),
            ),
          ),

          Theme(
            data: ThemeData(
                hintColor: Colors.white
            ),

            child: Padding(padding: EdgeInsets.only(top: 20,right: 20,left: 20),
              child: TextFormField(
                obscureText: true,
                autocorrect: false,
                validator: (value){
                  if (value.isEmpty){
                    return "Please Enter PassWord";
                  }else if(value.length<8) {
                    return "Password Must contain 8 Characters";
                  }else{
                    password = value;
                  }
                  return null;
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Color(0xffff2fc3),width: 1)
                  ),

                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Color(0xffff2fc3),width: 1)
                  ),

                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Color(0xffff2fc3),width: 1)
                  ),

                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Color(0xffff2fc3),width: 1)
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(left: 80,right: 80),
            // ignore: deprecated_member_use
            child: RaisedButton(
              onPressed: (){
                if(_formkey.currentState.validate()){
                  register();

                }
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Color(0xffff2fc3),
              child: Text("Sign Up",style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,fontSize: 20),
              ),
              padding: EdgeInsets.all(10),
            ),
          ),

          SizedBox(height: 20,),

          Container(
            width: double.infinity,
            height: 1,
            color: Colors.blue,
          ),

          SizedBox(height: 20,),


          Center(
            child: Column(
              children: <Widget>[
                Text("Sign Up With>>>" ,style: TextStyle(color: Colors.white),),

              ],
            ),),

          SizedBox(height: 10,),

          new Container(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 20),

                  // ignore: deprecated_member_use
                  child: RaisedButton(onPressed: () {  },
                    color: Colors.white,
                    padding: EdgeInsets.all(5),
                    child: Icon(FontAwesomeIcons.google, color: Color(0xFFFF2FC3),size: 30),
                    shape: CircleBorder(),
                  ),),

                SizedBox(width: 1,),

                Padding(padding: EdgeInsets.only(top: 20),

                  // ignore: deprecated_member_use
                  child: RaisedButton(onPressed: () {  },
                    color: Colors.white,
                    padding: EdgeInsets.all(5),

                    child: Icon(FontAwesomeIcons.facebook, color: Colors.blue,size: 30),
                    shape: CircleBorder(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Column(
              children: <Widget>[

                // ignore: deprecated_member_use
                FlatButton(onPressed: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (BuildContext context)=> LogInScreen()),
                  );
                },
                  child: Column(
                  children: <Widget>[ Text("Log In",style: TextStyle(color: Colors.white),),
                  Container(
                    width: 45,
                    height: 1,
                    color: Colors.white,
                    ),
                   ],
                  ),
              ),
             ],
            ),
          ),
        ],
      ),
     ),
    );
  }
}
