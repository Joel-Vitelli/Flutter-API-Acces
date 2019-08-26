import 'package:flutter/material.dart';
import 'package:users_api/Controller/service.controller.dart';
import 'package:users_api/Model/user.model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:users_api/View/present_users.dart';


class MyHomePage extends StatefulWidget {


  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  List data;

  Future<Users> getData() async {
    http.Response response = await http.get(
        Uri.encodeFull(url),
        headers: {
          "Accept": "application/json"
        }
    );
    this.setState((){
      data = json.decode(response.body);
    });
  }

  String img = "assets/sidebar_usuario-corporativo.png";

  @override
  void initState(){
    this.getData();
  }
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Users Api"
        ),
      ),
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index){
          return Card(
              child: Column(
                children: <Widget>[
                  PresentUsers(img ,data[index]["name"], data[index]["username"],data[index]["email"], data[index]["phone"], data[index]["website"], 1),
                ],
              )
          );
        },
      ),
    );
  }
}