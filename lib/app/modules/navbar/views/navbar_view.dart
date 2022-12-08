import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:ionicons/ionicons.dart';
import 'package:utscv/app/modules/education/views/education_view.dart';
import 'package:utscv/app/modules/home/views/home_view.dart';
import 'package:utscv/app/modules/skill/views/skill_view.dart';
import 'package:utscv/app/modules/work/views/work_view.dart';
import 'package:utscv/app/theme/colors.dart';

import '../controllers/navbar_controller.dart';

class NavbarView extends GetView<NavbarController> {
  const NavbarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavbarController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
            index: controller.tabIndex,
            children: [HomeView(), WorkView(), EducationView(), SkillView()]),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: primaryColor,
            unselectedItemColor: Colors.grey.shade400,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: GoogleFonts.lato(fontSize: 12),
            unselectedLabelStyle: GoogleFonts.lato(fontSize: 12),
            currentIndex: controller.tabIndex,
            onTap: controller.changeIndex,
            items: [
              _itemBar(IconlyBold.home, "Home"),
              _itemBar(IconlyBold.work, "Work"),
              _itemBar(Ionicons.school, "Education"),
              _itemBar(IconlyBold.profile, "Skill"),
            ]),
      );
    });
  }
}

// ignore: unused_element
_itemBar(IconData icon, String label) {
  return BottomNavigationBarItem(icon: Icon(icon), label: label);
}
