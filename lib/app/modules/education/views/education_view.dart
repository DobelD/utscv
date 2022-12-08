import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:utscv/app/theme/colors.dart';

import '../controllers/education_controller.dart';

class EducationView extends GetView<EducationController> {
  const EducationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: secondColor,
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Education',
            style: GoogleFonts.lato(fontSize: 16, color: Colors.white),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(15),
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: secondColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  ListTile(
                    dense: true,
                    visualDensity: VisualDensity(horizontal: 0),
                    contentPadding: EdgeInsets.symmetric(horizontal: 0),
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: secondColor.withOpacity(0.4)),
                      child: Center(
                          child: Icon(
                        Ionicons.school,
                        color: Colors.white,
                      )),
                    ),
                    title: Text(
                      'Universitas Siber Asia - Informatika',
                      style: GoogleFonts.lato(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        '2020 - sekarang',
                        style: GoogleFonts.lato(
                            fontSize: 12,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: accentColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  ListTile(
                    dense: true,
                    visualDensity: VisualDensity(horizontal: 0),
                    contentPadding: EdgeInsets.symmetric(horizontal: 0),
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: accentColor.withOpacity(0.4)),
                      child: Center(
                          child: Icon(
                        Ionicons.school,
                        color: Colors.white,
                      )),
                    ),
                    title: Text(
                      'SMK Negeri 1 Cimahi - Teknik Transmisi,Teknik Elektronika Komunikasi',
                      style: GoogleFonts.lato(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        '2015 - 2019',
                        style: GoogleFonts.lato(
                            fontSize: 12,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.amber.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  ListTile(
                    dense: true,
                    visualDensity: VisualDensity(horizontal: 0),
                    contentPadding: EdgeInsets.symmetric(horizontal: 0),
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.amber.withOpacity(0.4)),
                      child: Center(
                          child: Icon(
                        Ionicons.school,
                        color: Colors.white,
                      )),
                    ),
                    title: Text(
                      'SMPN 7 CIMAHI - Tata Busana, Pencak Silat',
                      style: GoogleFonts.lato(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        '2013 - 2015',
                        style: GoogleFonts.lato(
                            fontSize: 12,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  ListTile(
                    dense: true,
                    visualDensity: VisualDensity(horizontal: 0),
                    contentPadding: EdgeInsets.symmetric(horizontal: 0),
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.green.withOpacity(0.4)),
                      child: Center(
                          child: Icon(
                        Ionicons.school,
                        color: Colors.white,
                      )),
                    ),
                    title: Text(
                      'SDN Sukanampa - Pramuka',
                      style: GoogleFonts.lato(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        '2006 - 2012',
                        style: GoogleFonts.lato(
                            fontSize: 12,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
          ],
        ));
  }
}
