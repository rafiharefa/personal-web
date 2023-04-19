import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sistem_operasi/app/modules/home/views/home_view.dart';

import '../controllers/assignment_controller.dart';

class AssignmentView extends GetView<AssignmentController> {
  const AssignmentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Assignment'),
        centerTitle: true,
      ),
      body: Get.arguments == null ? Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.network('https://assets4.lottiefiles.com/packages/lf20_q2pevjuc.json', animate: true, width: 300),
              SizedBox(height: 50),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    elevation: 0,
                    fixedSize: Size(150, 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                  onPressed: (){
                Get.offAllNamed('/home');
              }, child: Text('Back To Home', style: GoogleFonts.poppins(fontSize: 15),))
            ],
          )) : FutureBuilder(
        future: controller.getContent(),
        builder: (context, snapshot) {
          return snapshot.connectionState == ConnectionState.waiting ? Center(child: Lottie.network('https://assets6.lottiefiles.com/private_files/lf30_esg1l8r1.json')) :
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 250,vertical: 20),
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(3)
                              ),
                              child: Text('Pertemuan ${controller.id}', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, color: Colors.black)),
                            ),
                            SizedBox(height: 10),
                            Text('CONCURRENCY IN OPERATING SYSTEM', style: GoogleFonts.poppins(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black)),
                            SizedBox(height: 10),
                            Text('BY RISYAD RAFI / ${controller.date}',style: GoogleFonts.poppins(fontSize: 15, color: Colors.black45) ),
                            SizedBox(height: 100),
                          ],
                        ),

                        Obx(
                            () {
                              int x = 0;
                              return Column(
                                  children: controller.subtitle.map((doc){
                                    return Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(doc, style: GoogleFonts.poppins(fontSize: 25), textAlign: TextAlign.left,),
                                          ],
                                        ),
                                        Text(controller.content.value[x++].replaceAll('\\n', '\n'),
                                          style: GoogleFonts.poppins(), textAlign: TextAlign.left,
                                        ),
                                        SizedBox(height: 50),
                                      ],
                                    );
                                  }
                                  ).toList()
                              );
                            }
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 50),

                  Container(
                    color: Colors.black,
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
