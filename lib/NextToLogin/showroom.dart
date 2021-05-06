import 'package:car/LoginScreen.dart';
import 'package:car/SearchComponents/searchcar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:car/NextToLogin/constants.dart';
import 'package:car/NextToLogin/data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:car/NextToLogin/car_widget.dart';
import 'package:car/NextToLogin/dealer_widget.dart';
import 'package:car/NextToLogin/available_cars.dart';
import 'package:car/NextToLogin/book_car.dart';
import 'package:car/NextToLogin/UserProfile.dart';

class Showroom extends StatefulWidget {
  @override
  _ShowroomState createState() => _ShowroomState();
}

class _ShowroomState extends State<Showroom> {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> logout() async{
    FirebaseUser user = (await auth.signOut()) as FirebaseUser;

  }

  List<NavigationItem> navigationItems = getNavigationItemList();
  NavigationItem selectedItem;

  List<Car> cars = getCarList();
  List<Dealer> dealers = getDealerList();

  @override
  void initState() {
    super.initState();
    setState(() {
      selectedItem = navigationItems[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,

      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/1.png'),
          AssetImage('assets/images/2.png'),
          AssetImage('assets/images/3.png'),
          AssetImage('assets/images/4.png'),
          AssetImage('assets/images/5.png'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        showIndicator: false,
      ),
    );
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
            new UserAccountsDrawerHeader(accountName: Text('Balaji'),
              accountEmail: Text('Balajiraja2080@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar( backgroundImage: AssetImage('assets/images/profile12.jpg'),
                  backgroundColor: Colors.transparent,radius: 50,),),),
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Showroom())); },
              child: ListTile( title: Text('Home'),leading: Icon(Icons.home,color: Colors.green,),
              ), ),
            InkWell(
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => profile1()));},
              child: ListTile(title: Text('Profile'),
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
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => LogInScreen()));
              },
              child: ListTile(
                title: Text('Log out'),
                leading: Icon(Icons.exit_to_app_rounded,color: Colors.brown,),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [


          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [


                    //image_carousel begins here...
                    image_carousel,

                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text(
                            "TOP DEALS",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[400],
                            ),
                          ),

                          Row(
                            children: [

                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => AvailableCars()));
                                },
                                child: Text(
                                  "view all",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: kPrimaryColor,
                                  ),
                                ),
                              ),

                              SizedBox(
                                width: 8,
                              ),

                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: kPrimaryColor,
                              ),

                            ],
                          ),

                        ],
                      ),
                    ),

                    Container(
                      height: 280,
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: buildDeals(),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AvailableCars()),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 16, right: 16, left: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          padding: EdgeInsets.all(24),
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Text(
                                    "Available Cars",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),

                                  Text(
                                    "Long term and short term",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),

                                ],
                              ),

                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                height: 50,
                                width: 50,
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: kPrimaryColor,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text(
                            "TOP DEALERS",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[400],
                            ),
                          ),

                          Row(
                            children: [

                              Text(
                                "view all",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryColor,
                                ),
                              ),

                              SizedBox(
                                width: 8,
                              ),

                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: kPrimaryColor,
                              ),

                            ],
                          ),

                        ],
                      ),
                    ),

                    Container(
                      height: 150,
                      margin: EdgeInsets.only(bottom: 16),
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: buildDealers(),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: buildNavigationItems(),
        ),
      ),
    );
  }

  List<Widget> buildDeals(){
    List<Widget> list = [];
    for (var i = 0; i < cars.length; i++) {
      list.add(
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BookCar(car: cars[i])),
            );
          },
          child: buildCar(cars[i], i)
        )
      );
    }
    return list;
  }

  List<Widget> buildDealers(){
    List<Widget> list = [];
    for (var i = 0; i < dealers.length; i++) {
      list.add(buildDealer(dealers[i], i));
    }
    return list;
  }

  List<Widget> buildNavigationItems(){
    List<Widget> list = [];
    for (var navigationItem in navigationItems) {
      list.add(buildNavigationItem(navigationItem));
    }
    return list;
  }

  Widget buildNavigationItem(NavigationItem item){
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItem = item;
        });
      },
      child: Container(
        width: 50,
        child: Stack(
          children: <Widget>[

            selectedItem == item 
            ? Center(
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColorShadow,
                ),
              ),
            )
            : Container(),

            Center(
              child: Icon(
                item.iconData,
                color: selectedItem == item ? kPrimaryColor : Colors.grey[400],
                size: 24,
              ),
            )

          ],
        ),
      ),
    );
  }

}