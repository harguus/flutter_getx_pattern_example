import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

//repository and controller  injection bindings

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomePage')),
      body: GetX<HomeController>(
        initState: (state) {
          Get.find<HomeController>().getAll();
        },
        builder: (_) {
          return _.postList.length < 1
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_.postList[index].title),
                      subtitle: Text(_.postList[index].body),
                    );
                  },
                  itemCount: _.postList.length,
                );
        },
      ),
    );
  }
}
