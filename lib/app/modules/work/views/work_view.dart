import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:utscv/app/theme/colors.dart';

import '../controllers/work_controller.dart';

class WorkView extends GetView<WorkController> {
  const WorkView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: secondColor,
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Work Experience',
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
                        IconlyBold.work,
                        color: Colors.white,
                      )),
                    ),
                    title: Text(
                      'Engineer Helpdesk - PT. Wahana Ciptasinatria',
                      style: GoogleFonts.lato(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        'Januari 2019 - Present',
                        style: GoogleFonts.lato(
                            fontSize: 12,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '''
Memelihara serta troubleshoot sistem IP PBX Avaya, konfigurasi, dan instalasi perangkat. Memonitoring perangkat switch NOC Telkom Plaza Indonesia, troubleshoot masalah internet speedy dan astinet lite Telkom lalu melakukan kordinasi dengan central telkom gambir atau cikini.''',
                    style: GoogleFonts.lato(
                        height: 1.5,
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
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
                        IconlyBold.work,
                        color: Colors.white,
                      )),
                    ),
                    title: Text(
                      'IT Support - PT. Wahana Ciptasinatria',
                      style: GoogleFonts.lato(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        'Juni 2018 - Desember 2018',
                        style: GoogleFonts.lato(
                            fontSize: 12,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '''
Praktek Kerja lapangan, Update OS Windows perusahaan dan memasang antivirus serta aplikasi perusahaan di PT.JTI. Memperbaiki masalah yang dialami pada PC/Laptop, printer, jaringan internet, router, access point, CCTV, dll. Melakukan backup data serta pengecekan rutin server di beberapa PT mitra.''',
                    style: GoogleFonts.lato(
                        height: 1.5,
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
