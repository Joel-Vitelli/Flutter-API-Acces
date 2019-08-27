class Users {
  int id;
  String name;
  String username;
  String email;
  String phone;
  String website;
  String img;

  Users({this.id, this.name, this.username, this.email, this.phone, this.website, this.img = "assets/sidebar_usuario-corporativo.png"});

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      phone: json['phone'],
      website: json['website'],
      img: json['image'] ?? "assets/sidebar_usuario-corporativo.png"
    );
  }

}