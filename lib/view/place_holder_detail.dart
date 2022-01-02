import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/controller/place_holder_controller.dart';
import 'package:getx_example/view/loading.dart';
import 'package:getx_example/view/success.dart';

class PlaceHolderDetail extends StatelessWidget {
  const PlaceHolderDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<PlaceHolderController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx App'),
      ),
      body: Obx(() => _controller.isLoading.isTrue
          ? const LoadingWidget(text: 'Lütfen Bekleyniz...')
          : SuccessWidget(controller: _controller)),
    );
  }
}
