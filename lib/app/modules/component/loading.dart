import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loading extends StatelessWidget {
  const Loading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Lottie.network('https://assets6.lottiefiles.com/private_files/lf30_esg1l8r1.json'));
  }
}
