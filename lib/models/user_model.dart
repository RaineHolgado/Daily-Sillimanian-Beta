import 'dart:convert';

class UserModel {
  String? id;
  String? name;
  String? email;
  String? urlImage;
  UserModel({
    this.id,
    this.name,
    this.email,
    this.urlImage,
  });

  UserModel copyWith({
    String? id,
    String? name,
    String? email,
    String? urlImage,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      urlImage: urlImage ?? this.urlImage,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'urlImage': urlImage,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic>? map) {
    return UserModel(
      id: map?['id'],
      name: map?['name'],
      email: map?['email'],
      urlImage: map?['urlImage'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, urlImage: $urlImage)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserModel &&
      other.id == id &&
      other.name == name &&
      other.email == email &&
      other.urlImage == urlImage;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      email.hashCode ^
      urlImage.hashCode;
  }
}
