import 'package:fake_api/services/api_services.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  ApiService apiService = ApiService();
  List userData = [];
  getData() async {
    var uData = await apiService.getUsersData();

    apiService.getUsersData();
    userData = uData;
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
