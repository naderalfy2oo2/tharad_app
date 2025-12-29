import 'package:flutter/material.dart';

import 'package:tharad_app/views/otp_verification.dart';

void main() {
  runApp(TharadApp());
}

class TharadApp extends StatelessWidget {
  const TharadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) =>
          Directionality(textDirection: TextDirection.rtl, child: child!),
      home: OtpVerificationView(),
    );
  }
}
