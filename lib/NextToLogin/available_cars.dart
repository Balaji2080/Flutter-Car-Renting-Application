import 'package:car/NextToLogin/car_widget.dart';
import 'package:car/NextToLogin/showroom.dart';
import 'package:flutter/material.dart';
import 'package:car/NextToLogin/constants.dart';
import 'package:car/NextToLogin/data.dart';
import 'package:car/NextToLogin/book_car.dart';
import 'package:car/SearchComponents/searchcar.dart';

class AvailableCars extends StatefulWidget {
  @override
  _AvailableCarsState createState() => _AvailableCarsState();
}

class _AvailableCarsState extends State<AvailableCars> {

  List<Filter> filters = getFilterList();
  Filter selectedFilter;

  @override
  void initState() {
    super.initState();
    setState(() {
      selectedFilter = filters[0];
    });
  }

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
            new UserAccountsDrawerHeader(
              accountName: Text('Rohit'),
              accountEmail: Text('GamerDelight@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.black38,
                  child: Icon(Icons.person,color: Colors.white,size: 50,),
                ),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Showroom()));

              },
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home,color: Colors.green,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite,color: Colors.red,),
              ),
            ),
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

      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    border: Border.all(
                      color: Colors.grey[300],
                      width: 1,
                    ),
                  ),
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.black,
                    size: 28,
                  )
                ),
              ),

              SizedBox(
                height: 16,
              ),

              Text(
                "Available Cars (" + getCarList().length.toString() + ")",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 16,
              ),

              Expanded(
                child: GridView.count(
                  physics: BouncingScrollPhysics(),
                  childAspectRatio: 1 / 1.55,
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: getCarList().map((item) {
                    return GestureDetector( onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => BookCar(car: item)),
                        );
                      },
                      child: buildCar(item, null)
                    );
                  }).toList(),
                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            buildFilterIcon(),
            Row(
              children: buildFilters(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFilterIcon(){
    return Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Center(
        child: Icon(
          Icons.filter_list,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }

  List<Widget> buildFilters(){
    List<Widget> list = [];
    for (var i = 0; i < filters.length; i++) {
      list.add(buildFilter(filters[i]));
    }
    return list;
  }

  Widget buildFilter(Filter filter){
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedFilter = filter;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(right: 12),
        child: Text(
          filter.name,
          style: TextStyle(
            color: selectedFilter == filter ? kPrimaryColor : Colors.grey[300],
            fontSize: 14,
            fontWeight: selectedFilter == filter ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}