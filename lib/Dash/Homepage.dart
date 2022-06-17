
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newapi/HttpRequests/MySql.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Get Data'),
              onPressed: () {
               Api.getAllNews(context).then((value) {
                  print(value.articles[0].title);
                
               });
              },
            ),
            RaisedButton(
              child: Text('Insert Data'),
              onPressed: () {
              },
            ),
            RaisedButton(
              child: Text('Update Data'),
              onPressed: () {
              
              },
            ),
            RaisedButton(
              child: Text('Delete Data'),
              onPressed: () {
             
              },
            ),
          ],
        ),
      ),
    );
  }
}