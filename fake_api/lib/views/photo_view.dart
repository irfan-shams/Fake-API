import 'package:fake_api/controllers/photo_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhotoView extends StatefulWidget {
  const PhotoView({super.key});

  @override
  State<PhotoView> createState() => _PhotoViewState();
}

class _PhotoViewState extends State<PhotoView> {
  PhotoController photoControl = Get.put(PhotoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        title: Text("All Photos Data"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GetBuilder<PhotoController>(
              builder: (context) {
                return photoControl.photoData.isEmpty
                    ? CircularProgressIndicator()
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: photoControl.photoData.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                              color: Colors.redAccent,
                              child: ListTile(
                                leading: CircleAvatar(
                                  child: Text(
                                      "${photoControl.photoData[index]["id"]}"),
                                ),
                                title: Text(
                                    "Title: ${photoControl.photoData[index]["title"]}"),
                                subtitle: Text(
                                    "URL: ${photoControl.photoData[index]["url"]}"),
                                trailing: CircleAvatar(
                                  child: Text(
                                      "${photoControl.photoData[index]["albumId"]}"),
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
