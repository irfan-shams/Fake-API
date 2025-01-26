import 'package:fake_api/services/api_services.dart';
import 'package:get/get.dart';

class CommentController extends GetxController {
  ApiService apiService = ApiService();
  List commentData = [];
  getData() async {
    var cData = await apiService.getCommentsData();

    apiService.getCommentsData();
    commentData = cData;
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
