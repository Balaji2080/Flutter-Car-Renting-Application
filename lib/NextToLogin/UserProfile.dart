import 'package:car/NextToLogin/showroom.dart';
import 'package:car/SearchComponents/searchcar.dart';
import 'package:flutter/material.Dart';

class profile1 extends StatefulWidget {
  @override
  _profile1State createState() => _profile1State();
}

class _profile1State extends State<profile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('RenCarzz'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Searchc()));
          }),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: (){}),
        ],
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            new UserAccountsDrawerHeader(accountName: Text('Rohit'),
              accountEmail: Text('GamerDelight@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar( backgroundImage: AssetImage('assets/images/profile12.jpg'),
                  backgroundColor: Colors.transparent,radius: 50,),),),
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Showroom())); },
              child: ListTile( title: Text('Home'),leading: Icon(Icons.home,color: Colors.green,),
              ), ),
            InkWell(
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => profile1()));},child: ListTile(title: Text('Profile'),
              leading: Icon(Icons.person_outline_sharp,color: Colors.red,),),),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Cart'),
                leading: Icon(Icons.shopping_cart,color: Colors.orange,),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.grey,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.brown,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Log out'),
                leading: Icon(Icons.exit_to_app_rounded,color: Colors.brown,),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex:7,
                child:Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue[800],Colors.blue],
                    ),
                  ),
                  child: Column(
                      children: [
                        SizedBox(height: 110.0,),
                        CircleAvatar(
                          radius: 65.0,
                          backgroundImage: AssetImage('assets/images/profile12.jpg'),
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(height: 10.0,),
                        Text('Balaji',
                            style: TextStyle(
                              color:Colors.white,
                              fontSize: 20.0,
                            )),
                        SizedBox(height: 10.0,),
                        Text('Balajiraja2080@gmail.com',
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 15.0,
                          ),)
                      ]
                  ),
                ),
              ),

              Expanded(
                flex:7,
                child: Container(
                  color: Colors.grey[200],
                  child: Center(
                      child:Card(
                          child: Container(
                              width: 310.0,
                              height:250.0,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Information",
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w800,
                                      ),),
                                    Divider(color: Colors.grey[300],),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.person,
                                          color: Colors.blueAccent[400],
                                          size: 35,
                                        ),
                                        SizedBox(width: 20.0,),
                                        Divider(color: Colors.grey[300],),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("User ID",
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),),
                                            Text("123456",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.grey[400],
                                              ),)
                                          ],
                                        )

                                      ],
                                    ),
                                    SizedBox(height: 20.0,),
                                    Divider(color: Colors.grey[300],),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.phone_android,
                                          color: Colors.green,
                                          size: 35,
                                        ),
                                        SizedBox(width: 20.0,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Phone No",
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),),
                                            Text("9876543210",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.grey[400],
                                              ),)
                                          ],
                                        )

                                      ],
                                    ),
                                    SizedBox(height: 20.0,),
                                    Divider(color: Colors.grey[300],),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.home,
                                          color: Colors.lightGreen[400],
                                          size: 35,
                                        ),
                                        SizedBox(width: 20.0,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Address",
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),),
                                            Text("Madurai, TamilNadu",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.grey[400],
                                              ),)
                                          ],
                                        )

                                      ],
                                    ),
                                  ],
                                ),
                              )
                          )
                      )
                  ),
                ),
              ),

            ],
          ),
          Positioned(
              top:MediaQuery.of(context).size.height*0.40,
              left: 20.0,
              right: 20.0,
              child: Card(
                  child: Padding(
                    padding:EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            child:Column(
                              children: [
                                Text('Gender',
                                  style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 14.0
                                  ),),
                                SizedBox(height: 5.0,),
                                Text("Male",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),)
                              ],
                            )
                        ),

                        Container(
                          child: Column(
                              children: [
                                Text('Birthday',
                                  style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 14.0
                                  ),),
                                SizedBox(height: 5.0,),
                                Text('April 7th',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),)
                              ]),
                        ),

                        Container(
                            child:Column(
                              children: [
                                Text('Age',
                                  style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 14.0
                                  ),),
                                SizedBox(height: 5.0,),
                                Text('19 yrs',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),)
                              ],
                            )
                        ),
                      ],
                    ),
                  )
              )
          )
        ],


      ),
    );
  }
}