import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  File? _selectedImage;

  final ImagePicker _picker = ImagePicker();

  // 2. وظيفة اختيار الصورة
  Future<void> _pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 58,
                  width: 178,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'إنشاء حساب جديد',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),

              Align(
                alignment: AlignmentGeometry.topRight,
                child: Text(
                  'الصورة الشخصية ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 6),

              // GestureDetector(
              //    onTap: _pickImage,
              //   child: Container(
              //     height: 120,
              //     width: 350,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(20),
              //     ),
              //     child: DottedBorder(
              //       options: RectDottedBorderOptions(
              //         color: Color(0xff42867B),
              //         dashPattern: [10, 5],
              //         strokeWidth: 2,
              //         padding: EdgeInsets.all(16),
              //       ),

              //       child: Center(
              //         child: Column(
              //           children: [
              //             SizedBox(
              //               width: 24,
              //               height: 24,
              //               child: SvgPicture.asset('assets/icons/camera.svg'),
              //             ),
              //             Text.rich(
              //               TextSpan(
              //                 children: [
              //                   TextSpan(
              //                     text:
              //                         'الملفات المسموح بيها :  JPEG , PNG\nالحد الاقصي : 5MB',
              //                     style: TextStyle(color: Color(0xff998C8C)),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              GestureDetector(
                onTap: _pickImage,
                child: Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: DottedBorder(
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      child: Center(
                        child: _selectedImage != null
                            ? Image.file(_selectedImage!)
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/camera.svg',
                                    height: 24,
                                  ),
                                  const Text(
                                    'الملفات المسموح بيها : JPEG , PNG\nالحد الاقصي : 5MB',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff998C8C),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 12),

              Align(
                alignment: AlignmentGeometry.topRight,
                child: Text(
                  'اسم المستخدم ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'thar22',
                    hintStyle: TextStyle(color: Color(0xffF4F7F6)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),

              Align(
                alignment: AlignmentGeometry.topRight,
                child: Text(
                  'البريد الالكتروني ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'tharad@gmail.com',
                    hintStyle: TextStyle(color: Color(0xffF4F7F6)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),

              Align(
                alignment: AlignmentGeometry.topRight,
                child: Text(
                  'كلمة المرور ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'كلمة المرور ',
                    hintStyle: TextStyle(color: Color(0xffF4F7F6)),
                    suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),

              Align(
                alignment: AlignmentGeometry.topRight,
                child: Text(
                  'تاكيد كلمة المرور ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: '123444',
                    suffixIcon: Icon(Icons.visibility_off),
                    hintStyle: TextStyle(color: Color(0xffF4F7F6)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),

              // child: ElevatedButton(
              //   style: ElevatedButton.styleFrom(

              //     disabledBackgroundColor: Color(0xff5CC7A3),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadiusGeometry.circular(10),
              //     ),
              //   ),

              //   onPressed: () {},

              //   child: Text(
              //     'إنشاء حساب جديد',
              //     style: TextStyle(color: Colors.white),
              //   ),
              // ),
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
                      'انشاء حساب جديد',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 12),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('ليس لديك حساب؟'),
                    SizedBox(width: 3),

                    TextButton(onPressed: () {}, child: Text('تسجيل الدخول')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
