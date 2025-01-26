import 'package:fake_api/services/api_services.dart';
import 'package:get/get.dart';

class AlbumController extends GetxController {
  ApiService apiService = ApiService();
  List albumData = [];
  getData() async {
    var aData = await apiService.getAlbumData();

    apiService.getPostData();
    albumData = aData;
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
