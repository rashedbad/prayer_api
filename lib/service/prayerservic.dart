import 'dart:convert';

import '../models/prayer.dart';
import '../network/cellnetwork.dart';

class Prayerservis {
  Future<List<Prayer>> getPrayer(String country) async {
    var response = await networkCell.getdata(
        "https://api.aladhan.com/v1/timingsByCity?city=$country&country=jordan&method=8");
    if (response.statusCode == 200) {
      List<Prayer> listPrayer = [
        Prayer.fromJson((json.decode(response.body) as Map<String, dynamic>))
      ];
      return listPrayer;
    }
    return [];
  }
}

Prayerservis prayerservis = Prayerservis();
