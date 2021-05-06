import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  @override
  _ForgotScreen createState() => _ForgotScreen();
}

class _ForgotScreen extends State<ForgotScreen> {
  String email = "";
  var _formkey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(title: Text("Forgot Password",style: TextStyle(color: Colors.white ),),),
      body: Center(
        child: Padding(padding: EdgeInsets.only(top:50,right: 20,left: 20),
          child: Form(
            key: _formkey,
            child: Column(
              children: <Widget>[
                Text("We Will Mail you a Link...            Please Click on that Link to reset your password",
                style: TextStyle(color: Color(0xffffffff),fontSize: 20),),


                Theme(
                  data: ThemeData(
                      hintColor: Colors.white
                  ),

                  child: Padding(padding: EdgeInsets.only(top: 30),
                    child: TextFormField(
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


                Padding(
                  padding: EdgeInsets.only(top:30,left: 50,right: 50),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: () {
                      if (_formkey.currentState.validate()) {
                        FirebaseAuth.instance.sendPasswordResetEmail(email: email).then((value) => print("Check your Mail"));
                      }
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: Color(0xffff2fc3),
                    child: Text("Reset Password",style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    padding: EdgeInsets.all(10),
                  ),
                ),
              ],
            ),
          ),
        ),


      ),


    );

  }
}
