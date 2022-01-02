import 'package:get/get.dart';
import 'package:getx_example/bindings/place_holder_binding.dart';
import 'package:getx_example/view/place_holder_detail.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
    name: '/',
    page: () => const PlaceHolderDetail(),
    binding: PlaceHolderBinding(),
  )
];
