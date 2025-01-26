import 'package:fake_api/controllers/comment_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommentView extends StatefulWidget {
  const CommentView({super.key});

  @override
  State<CommentView> createState() => _CommentViewState();
}

class _CommentViewState extends State<CommentView> {
  CommentController commentControl = Get.put(CommentController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("All Comments Data"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GetBuilder<CommentController>(
              builder: (context) {
                return commentControl.commentData.isEmpty
                    ? CircularProgressIndicator()
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: commentControl.commentData.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                              color: Colors.amberAccent,
                              child: ListTile(
                                leading: CircleAvatar(
                                  child: Text(
                                      "${commentControl.commentData[index]["id"]}"),
                                ),
                                title: Text(
                                    "Name: ${commentControl.commentData[index]["name"]}"),
                                subtitle: Column(
                                  spacing: 5,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "Email: ${commentControl.commentData[index]["email"]}"),
                                    Text(
                                        "Body: ${commentControl.commentData[index]["body"]}"),
                                  ],
                                ),
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
