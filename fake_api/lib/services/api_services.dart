import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  String baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<dynamic> getUsersData() async {
    var url = Uri.parse("$baseUrl/users");
    var response = await http.get(url);
    // print("This is status code ${response.statusCode}");
    var users = jsonDecode(response.body);
    // print(users);
    return users;
  }

  Future<dynamic> getToDosData() async {
    var url = Uri.parse("$baseUrl/todos?_limit=100");
    var response = await http.get(url);
    var todos = jsonDecode(response.body);
    return todos;
  }

  Future<dynamic> getPostData() async {
    var url = Uri.parse("$baseUrl/posts");
    var response = await http.get(url);
    var posts = jsonDecode(response.body);
    return posts;
  }

  Future<dynamic> getAlbumData() async {
    var url = Uri.parse("$baseUrl/albums");
    var response = await http.get(url);
    var albums = jsonDecode(response.body);
    return albums;
  }

  Future<dynamic> getCommentsData() async {
    var url = Uri.parse("$baseUrl/comments?_limit=100");
    var response = await http.get(url);
    var comments = jsonDecode(response.body);
    return comments;
  }

  Future<dynamic> getPhotosData() async {
    var url = Uri.parse("$baseUrl/photos?_limit=100");
    var response = await http.get(url);
    var photos = jsonDecode(response.body);
    return photos;
  }
}
