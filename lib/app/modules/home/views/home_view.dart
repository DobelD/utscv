import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:ionicons/ionicons.dart';
import 'package:utscv/app/theme/colors.dart';
import 'package:utscv/app/theme/url_launcher.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.zero,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          decoration: BoxDecoration(
              color: secondColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/profil.jpeg'),
                          fit: BoxFit.cover),
                      color: Colors.amber,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2))),
              SizedBox(height: 10),
              Text(
                'Depriansyah Syahruly',
                style: GoogleFonts.lato(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              SizedBox(
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Text(
                '''
Saya berumur 21 tahun, lulusan SMK Teknik Elektronika Komunikasi dan sekarang sedang menjalani kuliah S1 Informatika. Saya mudah beradaptasi, dapat bekerja keras, bekerja sama dalam tim serta senang mempelajari hal baru. Saya memiliki 3 tahun pengalaman sebagai Network Operation Center mitra Telkom.''',
                style: GoogleFonts.lato(
                    height: 1.5,
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    IconlyBold.location,
                    color: Colors.white,
                    size: 15,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Cimahi, Central Cimahi, Cimahi City, West Java, Indonesia',
                    style: GoogleFonts.lato(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              GestureDetector(
                onTap: () async {
                  await UrlLaunchers.openWa();
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Icon(
                        Ionicons.logo_whatsapp,
                        color: Colors.black,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Contact Us',
                        style: GoogleFonts.lato(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            offset: Offset.zero,
                            blurRadius: 5)
                      ]),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () async {
                  await openemail("mailto:depriansyah2000@gmail.com");
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Icon(
                        IconlyLight.message,
                        color: Colors.black,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Email',
                        style: GoogleFonts.lato(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            offset: Offset.zero,
                            blurRadius: 5)
                      ]),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}




// SizedBox(
//                   child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Ionicons.logo_whatsapp,
//                           color: Colors.white,
//                           size: 15,
//                         ),
//                         SizedBox(width: 5),
//                         FittedBox(
//                           child: Text(
//                             "+6289696997506",
//                             style: GoogleFonts.lato(
//                                 fontSize: 14,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w500),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   SizedBox(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Ionicons.mail,
//                           color: Colors.white,
//                           size: 15,
//                         ),
//                         SizedBox(width: 5),
//                         FittedBox(
//                           child: Text(
//                             "depriansyah2000@gmail.com",
//                             style: GoogleFonts.lato(
//                                 fontSize: 14,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w500),
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               )),
//               SizedBox(height: 10),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(
//                     IconlyBold.location,
//                     color: Colors.white,
//                     size: 15,
//                   ),
//                   SizedBox(width: 5),
//                   FittedBox(
//                     child: Text(
//                       'Cimahi, Central Cimahi, Cimahi City, West Java, Indonesia',
//                       style: GoogleFonts.lato(
//                           fontSize: 12,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w500),
//                     ),
//                   ),
//                 ],
//               ),
