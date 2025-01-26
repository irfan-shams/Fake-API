import 'package:fake_api/services/api_services.dart';
import 'package:get/get.dart';

class PostController extends GetxController {
  ApiService apiService = ApiService();
  List postData = [];
  getData() async {
    var pData = await apiService.getPostData();

    apiService.getPostData();
    postData = pData;
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
