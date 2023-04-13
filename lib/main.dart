import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        primaryColor: Colors.black,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          toolbarHeight: 120,
          elevation: 0,
          titleTextStyle: GoogleFonts.poppins(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          )
        ),
      ),
    ),
  );
}
