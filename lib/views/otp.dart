import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:slide_countdown/slide_countdown.dart';

class OtpVerificationView extends StatelessWidget {
  const OtpVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: 178,
                height: 58,
              ),
            ),

            SizedBox(height: 116),

            Text(
              'رمز التحقق',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff1F0606),
              ),
            ),

            SizedBox(height: 8),

            Text(
              ' لاستكمال فتح حسابك ادخل رمز التحقق المرسل عبر البريد\n                                     الإلكتروني',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color(0xff998C8C),
              ),
            ),

            SizedBox(height: 40),

            OtpTextField(
              numberOfFields: 4,
              borderColor: Color(0xffF0E6DE),

              showFieldAsBox: true,

              onCodeChanged: (String code) {},

              onSubmit: (String verificationCode) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog();
                  },
                );
              },
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: SlideCountdown(
                    duration: Duration(minutes: 4),
                    style: TextStyle(color: Color(0xff998C8C)),
                    decoration: BoxDecoration(color: Colors.transparent),
                  ),
                ),

                SizedBox(width: 141),

                Align(
                  alignment: Alignment.centerRight,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'لم يصلك رمز ؟ ',
                          style: TextStyle(color: Color(0xff0D1D1E)),
                        ),
                        TextSpan(
                          text: 'إعادة الإرسال',
                          style: TextStyle(color: Color(0xff42867B)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xff5CC7A3), Color(0xff265355)],
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text(
                    'المتابعة ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
