import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../data/model_card.dart';
import '../controllers/home_controller.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Obx(() =>
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text('Operating System', style: GoogleFonts.poppins(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40
              )),
              Text('by Risyad Rafi', style: GoogleFonts.poppins(color: Colors.black),),

              SizedBox(height: 50),

              Expanded(
                child: GridView.count(
                    crossAxisCount: 3,
                  childAspectRatio: 1.8,
                  children: controller.card.map((PertemuanCard card){
                   return Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       image: DecorationImage(
                           image: NetworkImage(card.imageUrl),
                           fit: BoxFit.cover
                       ),
                     ),

                     child: Padding(
                       padding: const EdgeInsets.all(15),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Text('Pertemuan ${card.id}', style: GoogleFonts.poppins(color: Colors.white70)),
                           Text(card.title.replaceAll('\\n', '\n'), style: GoogleFonts.poppins(
                               color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold
                           )),
                           SizedBox(height: 50),
                           ElevatedButton(onPressed: (){
                             Get.toNamed('/assignment', arguments: [card.id, card.date]);
                           },
                               style: ElevatedButton.styleFrom(
                                   backgroundColor: Colors.white
                               ),
                               child: Text('See more details', style: GoogleFonts.poppins(color: Colors.deepPurpleAccent),))
                         ],
                       ),
                     ),

                   );
                  }).toList(),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
