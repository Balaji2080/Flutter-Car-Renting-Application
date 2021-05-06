import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './model.dart';

class Searchc extends StatefulWidget {
  @override
  _SearchcState createState() => _SearchcState();
}

class _SearchcState extends State<Searchc> {

  List<Car_Model> _list = [];
  List<Car_Model> _search = [];
  var loading = false;
  Future<Null> fetchData() async {
    setState(() {loading = true;
    }); _list.clear();
    final response = await http.get("http://www.json-generator.com/api/json/get/bTANFofTci?indent=2");
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() { for (Map i in data) {
          _list.add(Car_Model.fromJson(i));
          loading = false;

        }
      });
    }
  }

  TextEditingController controller = new TextEditingController();

  onSearch(String text) async {
    _search.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    _list.forEach((f) {
      if (f.brand.toLowerCase().contains(text) || f.model.toString().toLowerCase().contains(text))
        _search.add(f);
    });

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Cars'),),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.blue,
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.search),
                  title: TextField(
                    controller: controller,
                    onChanged: onSearch,
                    decoration: InputDecoration(
                        hintText: "Search", border: InputBorder.none),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      controller.clear();
                      onSearch('');
                    },
                    icon: Icon(Icons.cancel),
                  ),
                ),
              ),
            ),
            loading
                ? Center(
              child: CircularProgressIndicator(),
            )
                : Expanded(
              child: _search.length != 0 || controller.text.isNotEmpty
                  ? ListView.builder(
                itemCount: _search.length,
                itemBuilder: (context, i) {
                  final b = _search[i];
                  return Container(
                    padding: EdgeInsets.all(10.0),
                    child: InkWell(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              CircleAvatar(backgroundImage: NetworkImage(b.picture),),
                              Column(
                                children: [
                                  Text("  "+b.brand+" "+b.model,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                                  SizedBox(height: 4.0,),
                                  Text("  "+b.owner), ],),],),
                        ],),
                      onTap: (){Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => DetailPage(b))
                      );},),
                  );
                },
              )
                  : ListView.builder(
                itemCount: _list.length,
                itemBuilder: (context, i) {
                  final a = _list[i];
                  return Container(
                      padding: EdgeInsets.all(10.0),
                      child: InkWell(
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      a.picture
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "  "+a.brand+" "+a.model,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0),
                                    ),


                                    SizedBox(
                                      height: 4.0,
                                    ),
                                    Text("  "+a.owner),
                                  ],
                                ),

                              ],
                            ),
                          ],
                        ),onTap: (){
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (context) => DetailPage(a))
                        );
                      },
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage  extends StatelessWidget {
  final Car_Model _search;

  DetailPage(this._search);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_search.brand+" "+_search.model),
      ),

    );
  }
}
