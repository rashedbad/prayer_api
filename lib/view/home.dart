import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../Controller/prayer_reop.dart';

class Home extends StatelessWidget {
  var prayerController = Get.put(PrayerController());
  Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController cetiycontroller = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "Prayers in Jordan",
            style: GoogleFonts.indieFlower(),
          )),
          backgroundColor: Colors.brown.shade700,
        ),
        body: Obx(() {
          return Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/msjed.jpg"),
                    fit: BoxFit.fill)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "City : ",
                                  style: GoogleFonts.indieFlower(
                                      color: Colors.white),
                                ),
                                Text(cetiycontroller.text,
                                    style: GoogleFonts.indieFlower(
                                        color: Colors.white, fontSize: 15)),
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                Text("Date : ",
                                    style: GoogleFonts.indieFlower(
                                        color: Colors.white)),
                                Text(
                                    DateFormat('yyyy/MM/dd')
                                        .format(DateTime.now()),
                                    style: GoogleFonts.indieFlower(
                                        color: Colors.white, fontSize: 15)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Fajr",
                                        style: GoogleFonts.indieFlower(
                                            color: Colors.white, fontSize: 30)),
                                    Text(
                                      prayerController.listprayer
                                          .elementAt(index)
                                          .data!
                                          .timings!
                                          .fajr
                                          .toString(),
                                      style: GoogleFonts.indieFlower(
                                          color: Colors.white, fontSize: 30),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Dhuhr",
                                        style: GoogleFonts.indieFlower(
                                            color: Colors.white, fontSize: 30)),
                                    Text(
                                        prayerController.listprayer
                                            .elementAt(index)
                                            .data!
                                            .timings!
                                            .dhuhr
                                            .toString(),
                                        style: GoogleFonts.indieFlower(
                                            color: Colors.white, fontSize: 30)),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Asr",
                                        style: GoogleFonts.indieFlower(
                                            color: Colors.white, fontSize: 30)),
                                    Text(
                                        prayerController.listprayer
                                            .elementAt(index)
                                            .data!
                                            .timings!
                                            .asr
                                            .toString(),
                                        style: GoogleFonts.indieFlower(
                                            color: Colors.white, fontSize: 30)),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Maghrib",
                                        style: GoogleFonts.indieFlower(
                                            color: Colors.white, fontSize: 30)),
                                    Text(
                                        prayerController.listprayer
                                            .elementAt(index)
                                            .data!
                                            .timings!
                                            .maghrib
                                            .toString(),
                                        style: GoogleFonts.indieFlower(
                                            color: Colors.white, fontSize: 30)),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Isha",
                                        style: GoogleFonts.indieFlower(
                                            color: Colors.white, fontSize: 30)),
                                    Text(
                                        prayerController.listprayer
                                            .elementAt(index)
                                            .data!
                                            .timings!
                                            .isha
                                            .toString(),
                                        style: GoogleFonts.indieFlower(
                                            color: Colors.white, fontSize: 30)),
                                  ],
                                ),
                              ],
                            );
                          },
                          itemCount: prayerController.listprayer.length,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 5,
                            offset: const Offset(2, 2),
                            spreadRadius: 2,
                          )
                        ],
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: TextField(
                        controller: cetiycontroller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.orange.shade800),
                            ),
                            hintText: 'Enter City ',
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.orange, width: 2.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          if (cetiycontroller.text.isEmpty) {
                            return;
                          }
                          prayerController.fetchallPrayer(cetiycontroller.text);
                        },
                        child: Text("Enter",
                            style: GoogleFonts.indieFlower(
                                color: Colors.white, fontSize: 30)))
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
