import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class ShowError extends StatelessWidget {
  const ShowError({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network('https://assets4.lottiefiles.com/packages/lf20_q2pevjuc.json', animate: true, width: 300),
            const SizedBox(height: 50),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  elevation: 0,
                  fixedSize: const Size(150, 30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),
                onPressed: (){
                  Get.offAllNamed('/home');
                }, child: Text('Back To Home', style: GoogleFonts.poppins(fontSize: 15),))
          ],
        ));
  }
}
