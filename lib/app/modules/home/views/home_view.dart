import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text('Operating System', style: GoogleFonts.poppins(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40
              )),
              Text('by Risyad Rafi', style: GoogleFonts.poppins(color: Colors.black),),

              SizedBox(height: 30),

              Container(
                height: 250,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/pertemuan7.png'),
                    fit: BoxFit.cover
                  ),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pertemuan 7', style: GoogleFonts.poppins(color: Colors.white70)),
                      SizedBox(height: 10),
                      Text('Concurreny In\nOperating System', style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold
                      )),
                      SizedBox(height: 100),
                      ElevatedButton(onPressed: (){
                        Get.toNamed('/assignment');
                      },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white
                          ),
                          child: Text('See more details', style: GoogleFonts.poppins(color: Colors.deepPurpleAccent),))
                    ],
                  ),
                ),

              ),

              SizedBox(height: 30),

              Divider(),

              SizedBox(height: 30),

              Center(child: Text('COMING SOON', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.black),))
            ],
          ),
        ),
      ),
    );
  }
}
