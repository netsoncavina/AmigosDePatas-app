// ignore_for_file: empty_constructor_bodies

import 'dart:ffi';

class Post {
  var name;
  var race;
  var age;
  var creator;
  var owner;
  var phoneNumber;
  var localization;
  var description;
  var selectedFile;
  var createdAt;

  Post({
    this.name,
    this.race,
    this.age,
    this.creator,
    this.owner,
    this.phoneNumber,
    this.localization,
    this.description,
    this.selectedFile,
    this.createdAt,
  });

  factory Post.fromJson(dynamic json) {
    return Post(
        name: json['name'],
        race: json['race'],
        age: json['age'],
        creator: json['creator'],
        owner: json['owner'],
        phoneNumber: json['phoneNumber'],
        localization: json['localization'],
        description: json['description'],
        selectedFile: json['selectedFile'],
        createdAt: json['createdAt']);
  }

  static List<Post> postFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Post.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Post {name: $name, owner: $owner, phoneNumber: $phoneNumber, localization: $localization, description: $description, selectedFile: $selectedFile, createdAt: $createdAt}';
  }
}
