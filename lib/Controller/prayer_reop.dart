import 'package:get/state_manager.dart';

import '../service/prayerservic.dart';

class PrayerController extends GetxController {
  var listprayer = [].obs;

  void fetchallPrayer(String country) {
    prayerservis.getPrayer(country).then((value) {
      listprayer.value = value;
    }).catchError((e) {
      listprayer.addAll(e);
    });
  }
}
