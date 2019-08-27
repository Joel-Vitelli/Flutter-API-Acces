import 'package:flutter/material.dart';
import 'package:users_api/Controller/service.controller.dart';
import 'package:users_api/Model/user.model.dart';
import 'package:flutter/cupertino.dart';
import 'package:users_api/View/present_users.dart';


class MyHomePage extends StatefulWidget {

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  List<Users> data = [];

  @override
  void initState(){
    getData().then((list) {
      setState(() {
        data = list;
      });
    });
  }
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Users Api"
        ),
      ),
      body: ListView.builder(
        itemCount: data.isEmpty ? 0 : data.length,
        itemBuilder: (BuildContext context, int index){
          return Card(
              child: Column(
                children: <Widget>[
                  PresentUsers(data[index].img ,data[index].name, data[index].username,data[index].email, data[index].phone, data[index].website, 1),
                ],
              )
          );
        },
      ),
    );
  }
}