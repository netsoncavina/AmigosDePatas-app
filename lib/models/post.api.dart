import 'dart:convert';
import 'package:amigos_de_patas/models/post.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class PostApi {
  static Future<List<Post>> getPost() async {
    var url = Uri.parse('https://serveramigosdepatas.herokuapp.com/posts');
    http.Response response = await http.get(url);
    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i = 0; i < data['data'].length; i++) {
      _temp.add(data['data'][i]);
    }
    return Post.postFromSnapshot(_temp);
  }
}
