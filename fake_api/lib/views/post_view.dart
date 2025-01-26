import 'package:fake_api/controllers/post_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostView extends StatefulWidget {
  const PostView({super.key});

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  PostController postControl = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        title: Text("All Posts Data"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GetBuilder<PostController>(
              builder: (context) {
                return postControl.postData.isEmpty
                    ? CircularProgressIndicator()
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: postControl.postData.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                              color: Colors.indigoAccent,
                              child: ListTile(
                                leading: CircleAvatar(
                                  child: Text(
                                      "${postControl.postData[index]["id"]}"),
                                ),
                                title: Text(
                                    "Title: ${postControl.postData[index]["title"]}"),
                                subtitle: Text(
                                    "Body: ${postControl.postData[index]["body"]}"),
                              ),
                            ),
                          );
                        },
                      );
              },
            )
          ],
        ),
      ),
    );
  }
}
