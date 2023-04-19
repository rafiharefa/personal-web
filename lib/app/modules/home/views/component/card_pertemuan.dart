import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../data/model_card.dart';
import '../../controllers/home_controller.dart';

class CardPertemuan extends StatelessWidget {
  const CardPertemuan({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(()
        => GridView.count(
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
                    const SizedBox(height: 50),
                    ElevatedButton(onPressed: (){
                      Get.toNamed('/assignment', arguments: [card.id, card.date, card.title]);
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
    );
  }
}
