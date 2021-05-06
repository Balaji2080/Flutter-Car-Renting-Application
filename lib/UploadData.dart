import 'package:flutter/cupertino.dart';
import 'package:flutter/material.Dart';


class UploadData extends StatefulWidget {
  @override
  _UploadDataState createState() => _UploadDataState();
}

class _UploadDataState extends State<UploadData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000725),
      appBar: AppBar(
        backgroundColor: Color(0xffff2fc3),
        title: Text("Upload Data",style: TextStyle(color: Color(0xffffffff)),),

      ),
    );
  }
}
