import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class Profile1View extends StatefulWidget {
  const Profile1View({super.key});

  @override
  State<Profile1View> createState() => _Profile1ViewState();
}

class _Profile1ViewState extends State<Profile1View> {
  File? _selectedImage;

  final ImagePicker _picker = ImagePicker();

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
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'الملف الشخصي',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/notification.png'),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 220,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xff5CC7A3), Color(0xff265355)],
                ),
              ),
            ),

            SafeArea(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 120),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: AlignmentGeometry.topRight,
                      child: Text('اسم المستخدم '),
                    ),
                    SizedBox(height: 6),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'thar22',
                        filled: true,
                        fillColor: Color(0xffF0E6DE),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),

                    SizedBox(height: 6),

                    Align(
                      alignment: AlignmentGeometry.topRight,
                      child: Text('البريد الالكتروني'),
                    ),
                    SizedBox(height: 6),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Tharad@gmail.com',
                        filled: true,
                        fillColor: Color(0xffF0E6DE),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),

                    SizedBox(height: 6),

                    Align(
                      alignment: AlignmentGeometry.topRight,
                      child: Text('الصورة الشخصية'),
                    ),

                    SizedBox(height: 6),

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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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

                    SizedBox(height: 6),

                    Align(
                      alignment: AlignmentGeometry.topRight,
                      child: Text('كلمة المرور القديمة'),
                    ),
                    SizedBox(height: 6),

                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF0E6DE),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),

                    SizedBox(height: 6),

                    SizedBox(height: 6),

                    Align(
                      alignment: AlignmentGeometry.topRight,
                      child: Text('كلمة المرور الجديدة'),
                    ),
                    SizedBox(height: 6),

                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF0E6DE),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),

                    SizedBox(height: 6),

                    SizedBox(height: 6),

                    Align(
                      alignment: AlignmentGeometry.topRight,
                      child: Text('تاكيد كلمة المرورالجديدة'),
                    ),
                    SizedBox(height: 6),

                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF0E6DE),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),

                    SizedBox(height: 6),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
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
                            'حفظ المتغيرات',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
