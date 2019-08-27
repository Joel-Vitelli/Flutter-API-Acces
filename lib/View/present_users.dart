import 'package:flutter/material.dart';

class PresentUsers extends StatelessWidget {
  String pathImage = "url";
  String name = "Name";
  String username = "User Name";
  String email = "email@example.com";
  String phone = "123456879";
  String website = "website.net";

  int flag = 0;
  dynamic mailStatus = "";


  PresentUsers(this.pathImage, this.name, this.username, this.email, this.phone, this.website, this.flag);

  @override

  Widget build(BuildContext context) {
    if (flag == 1) {
      mailStatus = Icon(
          Icons.mail
      );
    } else {
      mailStatus = Icon(
          Icons.mail_outline
      );
    }


    final image = Container(
        width: 80.0,
        height: 80.0,
        margin:
        EdgeInsets.only(top: 50.0, left: 10.0, right: 10.0, bottom: 10.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage),
          ),
        )
    );

    final nameDev = Container(
      child: Text(
        name,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 15.0,
            fontWeight: FontWeight.bold
        ),
      ),
    );


    final usernameS = Container(
      child: Text(
        username,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 15.0,
            color: Colors.grey
        ),
      ),
    );

    final emailS = Container(
      child: Text(
        email,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 15.0,
            color: Colors.grey
        ),
      ),
    );

    final phoneS = Container(
      child: Text(
        phone,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 15.0,
            color: Colors.grey
        ),
      ),
    );
    final websiteS = Container(
      child: Text(
        website,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 15.0,
            color: Colors.grey
        ),
      ),
    );

    final icono_mail_open = Container(
        height: 40.0,
        width: 40.0,
        margin: EdgeInsets.only(
            top: 10.0,
            right: 10.0,
            left: 10.0,
            bottom: 10.0
        ),
        child:
        mailStatus
    );

    return Row(
      children: <Widget>[
        image,
        Expanded(
          child: Column(
            children: <Widget>[
              nameDev,
              usernameS,
              emailS,
              phoneS,
              websiteS
            ],
          ),
        ),
        icono_mail_open
      ],
    );
  }
}