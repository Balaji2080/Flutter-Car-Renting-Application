import 'package:car/NextToLogin/showroom.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'SignUpScreen.Dart';
import 'ForgotScreen.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool signInState = false;
  String email = "" ,password= "";
  var _formkey = GlobalKey<FormState>();

  static FirebaseAuth auth = FirebaseAuth.instance;

  Future<String> log_in() async {
    String user = (await auth.signInWithEmailAndPassword(
        email: email.trim(), password: password)).toString();
    return user;
  }


  GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);
  Future<void> _GoogleSignIn() async{
     GoogleSignInAccount signInAccount = await googleSignIn.signIn();
     GoogleSignInAuthentication signInAuthentication = await signInAccount.authentication;
     AuthCredential credential = GoogleAuthProvider.getCredential(idToken: signInAuthentication.idToken,
         accessToken: signInAuthentication.accessToken);
     FirebaseUser user = (await auth.signInWithCredential(credential)).user;
     print(user);

     setState(() {
       signInState = true;
     });
  }

    @override
    void initstate(){
     super.initState();
     Future(() async{
      if(await auth.currentUser() != null ){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Showroom()));
      }
     });
    }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,

      body: Form(
        key: _formkey,
      child: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            child: Padding(
            padding: EdgeInsets.all(20),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[
                SizedBox(height: 50,),
                Text("Log in",
                style: TextStyle(shadows: [
                  Shadow(
                    blurRadius: 5.0,
                    color: Colors.deepOrangeAccent,
                    offset: Offset(3.0, 3.0),
                  ),
                ],fontFamily: "Allessa Personal Use",color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),
                ),
                Text("Welcome to RenCarzz",
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

            child: Padding(padding: EdgeInsets.only(top: 50,right: 20,left: 20),
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

          Padding(padding: EdgeInsets.only(top:5,right: 30,),
            child: Container(
              width: double.infinity,
              child: InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => ForgotScreen()));
              },
              child: Text("Forgot Password ?",style: TextStyle(color: Colors.white),textAlign: TextAlign.right,),
            ),
            ),
          ),

          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(left: 80,right: 80),
            // ignore: deprecated_member_use
            child: RaisedButton(
              onPressed: () {
                if (_formkey.currentState.validate()) {
                  Future<String> check = log_in();
                  if(check != null) {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) => Showroom()));
                  }
                }
              },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),    
            ),
            color: Color(0xffff2fc3),
            child: Text("Log In",style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,fontSize: 20),
            ),
            padding: EdgeInsets.all(10),
          ),
          ),

          SizedBox(height: 20,),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),

            child: Container(
              height: 1.0,
              width: 60.0,
              color: Colors.blue,
            ),
          ),
          Text(
            'Or',
            style: TextStyle(fontSize: 25.0,color: Colors.blue),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 1.0,
              width: 60.0,
              color: Colors.blue,
            ),
          ),
        ],
      ),


      SizedBox(height: 20,),


          Center(
            child: Column(
              children: <Widget>[
                Text("Sign in With>>>" ,style: TextStyle(color: Colors.white,),

                ),],
            ),),

          SizedBox(height: 10,),

          new Container(
            child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
            Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),

            // ignore: deprecated_member_use
              child: RaisedButton(onPressed: () {
                _GoogleSignIn();
                  if(signInState){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Showroom()));
                }
              },
                  color: Colors.white,
                  padding: EdgeInsets.all(5),
                  child: Icon(FontAwesomeIcons.google, color: Color(0xFFFF2FC3),size: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
              ),
            ),

                  SizedBox(width: 1,),

            Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),

              // ignore: deprecated_member_use
             child: RaisedButton(onPressed: () {  },
              color: Colors.white,
              padding: EdgeInsets.all(5),

              child: Icon(FontAwesomeIcons.facebook, color: Colors.blue,size: 30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),

            ),),
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
                  MaterialPageRoute(builder: (BuildContext context)=> SignUpScreen()));},
                child: Column(
                children: <Widget>[Text("Sign Up",style: TextStyle(color: Colors.white),),
                  Container(width: 45, height: 1, color: Colors.blue,
                ),],),),



            ],
            ),),

    ],
      ),
      ),
    );
  }
}

