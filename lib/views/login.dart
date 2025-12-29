// import 'package:flutter/material.dart';

// class LoginView extends StatefulWidget {
//   const LoginView({super.key});

//   @override
//   State<LoginView> createState() => _LoginViewState();
// }

// class _LoginViewState extends State<LoginView> {
//   bool _isChecked = false;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Center(

//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Image.asset('assets/images/logo.png', width: 178, height: 58),
//                 SizedBox(height: 100),

//                 Text(
//                   'تسجيل الدخول',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//                 ),

//                 Align(
//                   alignment: AlignmentGeometry.centerRight,
//                   child: Text('البريد الإلكتروني   '),
//                 ),

//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       hintText: 'Tharad@gmail.com',
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                     ),
//                   ),
//                 ),

//                 Align(
//                   alignment: AlignmentGeometry.centerRight,
//                   child: Text('كلمة المرور  '),
//                 ),

//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextFormField(
//                     obscureText: false,
//                     decoration: InputDecoration(
//                       suffixIcon: Icon(Icons.visibility_off),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                     ),
//                   ),
//                 ),

//                 Row(
//                   children: [
//                     CheckboxListTile(
//                       title: const Text(
//                         'Accept Terms and Conditions',
//                       ), // The label
//                       subtitle: const Text(
//                         'Read carefully before accepting',
//                       ), // Optional subtitle
//                       value: _isChecked,
//                       onChanged: (bool? newValue) {
//                         setState(() {
//                           _isChecked = newValue ?? false;
//                         });
//                       },
//                       controlAffinity: ListTileControlAffinity
//                           .leading, // Checkbox on the left
//                       activeColor: Colors.blue,
//                       checkColor: Colors.white,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),

//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 40),

                Image.asset('assets/images/logo.png', width: 178, height: 58),

                const SizedBox(height: 40),

                const Text(
                  'تسجيل الدخول',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),

                const SizedBox(height: 20),

                const Align(
                  alignment: Alignment.centerRight,
                  child: Text('البريد الإلكتروني'),
                ),

                const SizedBox(height: 8),

                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Tharad@gmail.com',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                const Align(
                  alignment: Alignment.centerRight,
                  child: Text('كلمة المرور'),
                ),

                const SizedBox(height: 8),

                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Row(
                //   children: [
                //     Expanded(
                //       child: Directionality(
                //         textDirection: TextDirection.ltr,
                //         child: CheckboxListTile(
                //           title: Text('تذكرني'),
                //           value: _isChecked,
                //           onChanged: (bool? value) {
                //             setState(() {
                //               _isChecked = value ?? false;
                //             });
                //           },
                //           controlAffinity: ListTileControlAffinity.leading,
                //         ),
                //       ),
                //     ),

                //     Align(
                //       alignment: AlignmentGeometry.centerRight,
                //       child: TextButton(
                //         onPressed: () {},
                //         child: Text('هل نسيت كلمة المرور؟'),
                //       ),
                //     ),
                //   ],
                // ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'هل نسيت كلمة المرور؟',
                        style: TextStyle(color: Color(0xff42867B)),
                      ),
                    ),
                    Spacer(),

                    const Text('تذكرني'),
                    Checkbox(
                      value: _isChecked,
                      onChanged: (value) {
                        setState(() => _isChecked = value ?? false);
                      },
                    ),
                  ],
                ),

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
                        'تسجيل الدخول ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' إنشاء حساب جديد',
                      style: TextStyle(color: Color(0xff42867B)),
                    ),

                    SizedBox(width: 2),
                    Text(
                      'ليس لديك حساب؟',
                      style: TextStyle(color: Color(0xff0D1D1E)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
