import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utscv/app/theme/colors.dart';

import '../controllers/skill_controller.dart';

class SkillView extends StatelessWidget {
  const SkillView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SkillController());
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: secondColor,
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Skills',
            style: GoogleFonts.lato(fontSize: 16, color: Colors.white),
          ),
        ),
        body: ListView.builder(
            padding: EdgeInsets.all(15),
            itemCount: controller.skil.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: secondColor.withOpacity(0.1)),
                  child: ListTile(
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: secondColor.withOpacity(0.2)),
                      child: Center(
                        child: Text(
                          "${index + 1}",
                          style: GoogleFonts.lato(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    title: Text(
                      "${controller.skil[index].skil}",
                      style: GoogleFonts.lato(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              );
            }));
  }
}
