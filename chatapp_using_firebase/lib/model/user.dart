class User {
  String name;
  String id;
  String? imageurl;

  User({required this.name, required this.id, this.imageurl});

  // Convert a User object into a JSON map
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id,
      'imageurl': imageurl,
    };
  }

  // Create a User object from a JSON map
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      id: json['id'],
      imageurl: json['imageurl'],
    );
  }
}
