import 'dart:convert';
import 'package:amigos_de_patas/models/post.dart';
import 'package:http/http.dart' as http;

class PostApi {
  static Future<List<Post>> getPost() async {
    var uri = Uri.https('https://serveramigosdepatas.herokuapp.com', '/posts');

    final response = await http.get(uri);
    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['data']) {
      _temp.add(data['data'][i]);
    }

    return Post.postFromSnapshot(_temp);
  }
}
