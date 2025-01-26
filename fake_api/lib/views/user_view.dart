import 'package:fake_api/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  UserController userControl = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text("All Users Data"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GetBuilder<UserController>(
              builder: (context) {
                return userControl.userData.isEmpty
                    ? CircularProgressIndicator()
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: userControl.userData.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                              color: Colors.limeAccent,
                              child: ListTile(
                                leading: CircleAvatar(
                                  child: Text(
                                      "${userControl.userData[index]["id"]}"),
                                ),
                                title: Text(
                                    "Name: ${userControl.userData[index]["name"]}"),
                                subtitle: Text(
                                    "Email: ${userControl.userData[index]["email"]}"),
                                trailing: Text(
                                    "Username: ${userControl.userData[index]["username"]}"),
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
