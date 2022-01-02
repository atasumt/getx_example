import 'package:flutter/material.dart';
import 'package:getx_example/controller/place_holder_controller.dart';

class SuccessWidget extends StatelessWidget {
  SuccessWidget({Key? key, required this.controller}) : super(key: key);

  PlaceHolderController controller;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('${controller.placeHolderModel.title}'),
        subtitle: Text('${controller.placeHolderModel.body}'),
        leading: CircleAvatar(
          child: Text('${controller.placeHolderModel.id}'),
        ),
      ),
    );
  }
}
