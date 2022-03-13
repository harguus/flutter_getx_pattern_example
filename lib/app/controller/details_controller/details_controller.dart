// ignore_for_file: avoid_print

import 'package:get/get.dart';
import '../../data/model/model.dart';
import '../../data/repository/posts_repository.dart';

class DetailsController extends GetxController {
  final MyRepository repository;
  final _post = MyModel().obs;

  get post => _post.value;
  set post(value) => _post.value = value;

  DetailsController({required this.repository});

  //pratique
  editar(post) {
    print('editar');
  }

  //pratique
  delete(id) {
    print('deletar');
  }
}
