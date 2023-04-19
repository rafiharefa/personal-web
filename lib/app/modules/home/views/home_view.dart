// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sistem_operasi/app/modules/component/footer.dart';

import '../../component/loading.dart';
import '../controllers/home_controller.dart';
import 'component/card_pertemuan.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('ASSIGNMENTS',
        ),
        leadingWidth: 150,
        leading: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Lottie.network('https://assets4.lottiefiles.com/packages/lf20_8zzltjyc.json', animate: true, height: 80),
        ),
      ),
      body: FutureBuilder(
        future: controller.getCard(),
        builder: (context, snapshot) {
          return snapshot.connectionState == ConnectionState.waiting ? Loading() :
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text('Operating System', style: GoogleFonts.poppins(
                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40
                  )),
                  Text('by Risyad Rafi', style: GoogleFonts.poppins(color: Colors.black),),

                  SizedBox(height: 50),

                  CardPertemuan(controller: controller),

                ],
              ),
          );
        }
      ),
    );
  }
}


