import 'package:fake_api/services/api_services.dart';
import 'package:get/get.dart';

class PhotoController extends GetxController {
  ApiService apiService = ApiService();
  List photoData = [];
  getData() async {
    var phData = await apiService.getPhotosData();

    apiService.getCommentsData();
    photoData = phData;
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
