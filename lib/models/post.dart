// ignore_for_file: empty_constructor_bodies

class Post {
  final String name;
  final String race;
  final String age;
  final String creator;
  final String owner;
  final String phoneNumber;
  final String localization;
  final String description;
  final String selectedFile;
  final DateTime createdAt;

  Post({
    required this.name,
    required this.race,
    required this.age,
    required this.creator,
    required this.owner,
    required this.phoneNumber,
    required this.localization,
    required this.description,
    required this.selectedFile,
    required this.createdAt,
  });

  factory Post.fromJson(dynamic json) {
    return Post(
        name: json['name'] as String,
        race: json['race'] as String,
        age: json['age'] as String,
        creator: json['creator'] as String,
        owner: json['owner'] as String,
        phoneNumber: json['phoneNumber'] as String,
        localization: json['localization'] as String,
        description: json['description'] as String,
        selectedFile: json['selectedFile'] as String,
        createdAt: json['createdAt'] as DateTime);
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
