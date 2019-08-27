import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:users_api/Model/user.model.dart';


String url = "https://jsonplaceholder.typicode.com/users";

List data= [];

Future<List<Users>> getData() async {

  http.Response response = await http.get(
      Uri.encodeFull(url),
      headers: {
        "Accept": "application/json"
      }
  );

  var jsonList = List.from(json.decode(response.body));
  List<Users> usersList = [];
  for (var user in jsonList) {
    usersList.add(Users.fromJson(user));
  }

  return usersList;

}

String img = "assets/sidebar_usuario-corporativo.png";