import 'package:flutter/material.dart';
import 'package:flutter_application_7/drawer.dart';

class Lab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('السيرة الذاتية'),
          backgroundColor: Color.fromARGB(255, 13, 230, 193),
        ),
        drawer: MyDrawer(),
        body: Container(
          color: Color.fromARGB(255, 242, 245, 244),
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 13, 230, 193),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // الاسم
                  Text(
                    'الاسم: محمد بركات محمد عبدالله',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 8),
                  // العمر
                  Text(
                    'العمر: 21',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 8),
                  // الجنسية
                  Text(
                    'الجنسية: يمني',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 8),
                  // التخصص
                  Text(
                    'التخصص: تقنية معلومات',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 8),
                  // المستوى
                  Text(
                    'المستوى: بكالوريوس',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 16),
                  // الأعمال السابقة
                  Text(
                    'الأعمال السابقة:',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- موقع عرض اعمالي الخاصة',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '- متجر الالكتروني',
                    style: TextStyle(fontSize: 16),
                    textDirection: TextDirection.rtl,
                  ),

                  Text(
                    '- نظام ادراة معرض سيارات',
                    style: TextStyle(fontSize: 16),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 16),
                  // المهارات
                  Text(
                    'المهارات:',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- برمحة مواقع',
                    style: TextStyle(fontSize: 16),
                    textDirection: TextDirection.rtl,
                  ),
                  Text(
                    '- برمجة واجهات بلغة C#',
                    style: TextStyle(fontSize: 16),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
