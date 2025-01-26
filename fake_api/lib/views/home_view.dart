import 'package:fake_api/views/album_view.dart';
import 'package:fake_api/views/comment_view.dart';
import 'package:fake_api/views/photo_view.dart';
import 'package:fake_api/views/post_view.dart';
import 'package:fake_api/views/todos_view.dart';
import 'package:fake_api/views/user_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text("JSON Placeholder API"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(fontSize: 14)),
              onPressed: () {
                Get.to(
                  const PostView(),
                  duration: Duration(seconds: 1),
                  transition: Transition.leftToRight,
                );
              },
              child: Text("Posts Data"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(fontSize: 14)),
              onPressed: () {
                Get.to(
                  const CommentView(),
                  duration: Duration(seconds: 1),
                  transition: Transition.leftToRight,
                );
              },
              child: Text("Comments Data"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(fontSize: 14)),
              onPressed: () {
                Get.to(
                  const AlbumView(),
                  duration: Duration(seconds: 1),
                  transition: Transition.leftToRight,
                );
              },
              child: Text("Albums Data"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(fontSize: 14)),
              onPressed: () {
                Get.to(
                  const PhotoView(),
                  duration: Duration(seconds: 1),
                  transition: Transition.leftToRight,
                );
              },
              child: Text("Photos Data"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(fontSize: 14)),
              onPressed: () {
                Get.to(
                  const TodosView(),
                  duration: Duration(seconds: 1),
                  transition: Transition.leftToRight,
                );
              },
              child: Text("Todos Data"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lime,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(fontSize: 14)),
              onPressed: () {
                Get.to(
                  const UserView(),
                  duration: Duration(seconds: 1),
                  transition: Transition.leftToRight,
                );
              },
              child: Text("Users Data"),
            ),
          ],
        ),
      ),
    );
  }
}
