import 'package:fake_api/controllers/album_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({super.key});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  AlbumController albumControl = Get.put(AlbumController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        title: Text("All Albums Data"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GetBuilder<AlbumController>(
              builder: (context) {
                return albumControl.albumData.isEmpty
                    ? CircularProgressIndicator()
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: albumControl.albumData.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                              color: Colors.purpleAccent,
                              child: ListTile(
                                leading: CircleAvatar(
                                  child: Text(
                                      "${albumControl.albumData[index]["id"]}"),
                                ),
                                title: Text(
                                    "Title: ${albumControl.albumData[index]["title"]}"),
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
