import 'package:flutter/cupertino.dart';
import 'package:tolhackeys/models/infoperjalanan_models.dart';
import 'package:tolhackeys/services/infoperjalanan_service.dart';

class infoperjalananProvider with ChangeNotifier {
  List<infoperjalananModel> infoper = [];

  List<infoperjalananModel> get info => infoper;

  set info(List<infoperjalananModel> info) {
    infoper = info;
    notifyListeners();
  }

  Future<void> getinfo() async {
    try {
      List<infoperjalananModel> info =
          await infoperjalananService().getinfoperjalanan();
      infoper = info;
    } catch (e) {
      print(e);
    }

    notifyListeners();
  }
}
