import 'package:fake_api/controllers/todos_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TodosView extends StatefulWidget {
  const TodosView({super.key});

  @override
  State<TodosView> createState() => _TodosViewState();
}

class _TodosViewState extends State<TodosView> {
  TodosController todosController = Get.put(TodosController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.white,
        title: Text("All Todos Data"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GetBuilder<TodosController>(
              builder: (context) {
                return todosController.todosData.isEmpty
                    ? CircularProgressIndicator()
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: todosController.todosData.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                              color: Colors.lightGreenAccent,
                              child: ListTile(
                                leading: CircleAvatar(
                                  child: Text(
                                      "${todosController.todosData[index]["id"]}"),
                                ),
                                title: Text(
                                    "Title: ${todosController.todosData[index]["title"]}"),
                                trailing: Text(
                                    "Completed: ${todosController.todosData[index]["completed"]}"),
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
