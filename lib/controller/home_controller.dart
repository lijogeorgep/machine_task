import 'package:get/get.dart';
import 'package:machine_task/model/home_model.dart';
import 'package:machine_task/services/home_service.dart';

class HomeController extends GetxController {
  var loading = true.obs;
  List<HomeScreenModel?> homeData = [];
  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() async {
    homeData.clear();
    var datas = await HomeServices.fetchHomeDataService();

    if (datas.isNotEmpty) {
      homeData.addAll(datas);
      loading.value = false;
    }
  }
}
