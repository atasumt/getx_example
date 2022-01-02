import 'package:get/get.dart';
import 'package:getx_example/controller/place_holder_controller.dart';
import 'package:getx_example/services/place_holder_services.dart';

class PlaceHolderBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PlaceHolderServices>(PlaceHolderServices());
    Get.lazyPut<PlaceHolderController>(() => PlaceHolderController());
  }
}
