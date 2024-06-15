import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'witget/floatingmenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        shadowColor: Colors.purpleAccent[50],
        elevation: 5,
        title: Text('NM Accounting',style: TextStyle(color: Colors.black)),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
              gradient: LinearGradient(
              colors: [Colors.pink.shade100, Colors.greenAccent.shade100],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
        ),
      ),
              child: Text('Menu'),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Services'),
              onTap: () {},
            ),
            ListTile(
              title: Text('About Us'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Contact Us'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ServiceSection(
                title: 'รับทำบัญชี',
                description:
                'รับทำบัญชี จัดทำงบการเงิน รับปิดงบ ด้วยทีมงานมืออาชีพ และควบคุมคุณภายโดยผู้ตรวจสอบบัญชีรับอนุญาต',
                imageUrl:
                'images/financial planning.jpg', // Local image, // Replace with your image URL
              ),
              ServiceSection(
                title: 'รับตรวจสอบบัญชี',
                description:
                'รับตรวจสอบบัญชี โดยผู้สอบบัญชีรับอนุญาต ตามมาตรฐานการสอบบัญชีไทยที่กำหนดโดยสภาวิชาชีพบัญชี',
                imageUrl:
                'images/audit.jpg', // Local image, // Replace with your image URL
              ),
              ServiceSection(
                title: 'รับจดทะเบียนบริษัท',
                description:
                'รับจดทะเบียนบริษัท จดทะเบียนเปลี่ยนแปลงกับกรมพัฒน์ กรมสรรพากร และประกันสังคม โดยผู้เชี่ยวชาญ',
                imageUrl: 'images/bookkeeping service.jpg',
              ),
              ServiceSection(
                title: 'รับสอนบัญชี',
                description:
                'รับสอนบัญชี แบบตัวต่อตัวหรือกลุ่มเล็ก ผู้เรียนสามารถกำหนดเนื้อหาที่ต้องการได้ เพื่อให้สามารถนำไปใช้จริงได้',
                imageUrl: 'images/consult.jpg', // Local image,
              ),
              ServiceSection(
                title: 'รับวางระบบบัญชี',
                description:
                'รับวางระบบบัญชี ธุรกิจเปิดใหม่ ธุรกิจเตรียมเข้าตลาดหลักทรัพย์ เพื่อให้มีระบบการควบคุมภายในที่ดี',
                imageUrl: 'images/analysis.jpg', // Local image,
              ),
              ServiceSection(
                title: 'รับวางแผนภาษี',
                description:
                'รับวางแผนภาษี ขอคืนภาษี เจรจาต่อรองภาษีกับเจ้าหน้าที่กรมสรรพากร โดยผู้เชี่ยวชาญทางด้านภาษี',
                imageUrl: 'images/tax preparation.jpg',
              ),
              Footer(),
            ],
          ),
        ),
          FloatingMenu(),
        ],

      ),

    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(32.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.pink.shade50, Colors.greenAccent.shade100],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'บริษัท นฤมล การบัญชี จำกัด',
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          SizedBox(height: 8.0),
          Text(
            'สำนักงานบัญชี ที่มุ่งเน้นการให้บริการที่มีคุณภาพทางด้านบัญชีแบบครบวงจร ได้แก่ รับทำบัญชี รับตรวจสอบบัญชี วางระบบบัญชี วางแผนภาษี และจดทะเบียนบริษัท',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}

class ServiceSection extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  ServiceSection(
      {super.key,
      required this.title,
      required this.description,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
              width: 600,
              height: 300,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              )), // Display the image
          SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(description),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.pinkAccent, Colors.pink.shade100],
        ),
      ),
      child: const Column(
        children: [
          Text(
            'บริษัท เคเคเอ็น การบัญชี จำกัด',
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
          SizedBox(height: 8.0),
          Text(
            '99/209 ซอยแจ้งวัฒนะ12 แยก4-7-4-1 แขวงทุ่งสองห้อง เขตหลักสี่ กรุงเทพมหานคร 10210',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'โทรศัพท์: 081-1711962',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Email: Krit.katesorn@hotmail.com',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 16.0),
          Text(
            '© Copyright 2020. KKNACCOUNTING.COM All Rights Reserved.',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
