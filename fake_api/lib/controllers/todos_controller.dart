import 'package:fake_api/services/api_services.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TodosController extends GetxController {
  ApiService apiService = ApiService();
  List todosData = [];
  getData() async {
    var tData = await apiService.getToDosData();

    apiService.getToDosData();
    todosData = tData;
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
