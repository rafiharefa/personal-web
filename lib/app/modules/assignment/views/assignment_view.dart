import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sistem_operasi/app/modules/component/loading.dart';

import '../../component/error.dart';
import '../../component/footer.dart';
import '../controllers/assignment_controller.dart';
import 'content/content.dart';

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
      body: Get.arguments == null ? const ShowError() :
      FutureBuilder(
        future: controller.getContent(),
        builder: (context, snapshot) {
          return snapshot.connectionState == ConnectionState.waiting ? const Loading() :
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
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(3)
                              ),
                              child: Text('Pertemuan ${controller.id}', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, color: Colors.black)),
                            ),
                            const SizedBox(height: 10),
                            Text(controller.title.replaceAll('\\n', ' '), style: GoogleFonts.poppins(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black)),
                            const SizedBox(height: 10),
                            Text('BY RISYAD RAFI / ${controller.date}',style: GoogleFonts.poppins(fontSize: 15, color: Colors.black45) ),
                            const SizedBox(height: 100),
                          ],
                        ),

                        Content(controller: controller)
                      ],
                    ),
                  ),

                  const SizedBox(height: 50),

                  const Footer(),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}



