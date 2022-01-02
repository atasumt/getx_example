import 'package:get/get.dart';
import 'package:getx_example/model/place_holder_model.dart';
import 'package:getx_example/services/place_holder_services.dart';

class PlaceHolderController extends GetxController {
  PlaceHolderController() {
    _placeHolderServices = Get.find<PlaceHolderServices>();
    getResponse();
  }

  late PlaceHolderServices _placeHolderServices;
  late PlaceHolderModel placeHolderModel;

  RxBool isLoading = false.obs;

  void getResponse() async {
    showLoading();
    placeHolderModel = await _placeHolderServices.generateDetail();
    hideLoading();
  }

  void showLoading() => isLoading.toggle();
  void hideLoading() => isLoading.toggle();
}
