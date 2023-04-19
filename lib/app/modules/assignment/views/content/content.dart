import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/assignment_controller.dart';

class Content extends StatelessWidget {
  const Content({
    super.key,
    required this.controller,
  });

  final AssignmentController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
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
                    // ignore: invalid_use_of_protected_member
                    Text(controller.content.value[x++].replaceAll('\\n', '\n'),
                      style: GoogleFonts.poppins(), textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 50),
                  ],
                );
              }
              ).toList()
          );
        }
    );
  }
}
