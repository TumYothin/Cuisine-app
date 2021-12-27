import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cuisine App"),
      ),
      body: Container(
        child: Center(
          child: ListView(
            children: [
              pic_cover(),
              infor(),
              profile(),
              name_chef(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: time_finish(),
              ),
              line(),
              describe(),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: raw_material(),
              ),
              infor_material(),
              refer()
            ],
          ),
        ),
      ),
    );
  }

  Image pic_cover() => Image.asset('images/lobster_cover.jpg');

  Widget infor() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'วิธีทำ “ล็อบสเตอร์อบชีส” เมนูอาหารฝรั่งทำง่ายแบบไม่ง้อร้าน! ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "เนื้อล็อบสเตอร์เด้ง ๆ โปะซอสเข้มข้นและชีสเน้น ๆ กับเมนู “ล็อบสเตอร์อบชีส” ที่มาพร้อมวิธีทำที่ทำตามได้ไม่ยาก พร้อมแล้วตามมาเข้าครัวกันเลย! ",
            style: TextStyle(fontSize: 16, height: 1.4, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget profile() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CircleAvatar(
        radius: 53,
        backgroundColor: Colors.black38,
        child: CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
              'https://scontent.fbkk5-6.fna.fbcdn.net/v/t1.6435-1/p240x240/133806163_105391181505653_4454539258905947315_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=7206a8&_nc_ohc=ooI9I8bE094AX9LdH0M&_nc_ht=scontent.fbkk5-6.fna&oh=00_AT-eO8UsN7KF9bCSamvjoK9voXDixWfwENQbNgssC-vqaw&oe=61ED8BDF'),
        ),
      ),
    );
  }

  Widget name_chef() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '17 ธ.ค. 2564 โดย เซฟตั้มคนดี',
            style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }

  Widget time_finish() => Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 215, 0, 20),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(Icons.timer, color: Colors.blue[500]),
                const Text('เตรียมเวลา'),
                const Text('10 นาที'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.orange[500]),
                const Text('เวลาปรุง'),
                const Text('50 นาที'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.local_fire_department, color: Colors.red[500]),
                const Text('แคลอรี่'),
                const Text('300 Kcal/เสิร์ฟ'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.person, color: Colors.green[500]),
                const Text('สำหรับ'),
                const Text('5 เสิร์ฟ'),
              ],
            ),
          ],
        ),
      );

  Widget line() => Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
              padding:
                  EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 10),
              child: Divider(color: Colors.grey.shade600, thickness: 1),
            )),
            Text(
              'เกรินเล็กน้อย',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(color: Colors.grey.shade600, thickness: 1),
            )),
          ],
        ),
      );

  Widget describe() {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "ใครว่าทำเมนูล็อบสเตอร์นั้นไม่สามารถทำได้ที่บ้าน จิ๋วหิวโซคนนี้ขอคาน! เพราะวันนี้จะมาชวนเพื่อน ๆ เข้าครัวทำเมนู “ล็อบสเตอร์อบชีส” ที่บ้านกันแบบง่าย ๆ และไม่ต้องเตรียมล็อบสเตอร์ให้วุ่นวาย ส่วนซอสก็สามารถทำได้ไม่ยาก งานนี้รับรองว่าเด็ดไม่แพ้ร้านเลยล่ะจ้า  ",
            style: TextStyle(
              fontSize: 16,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }

  Image raw_material() => Image.asset('images/lobster_material.jpg');

  Widget infor_material() {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'วิธีทำ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            'STEP 1 : เตรียมล็อบสเตอร์ ',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            "• นำแคนนาเดียนล็อบสเตอร์ดิบส่วนหาง ตรา Qfresh วางให้ละลายที่อุณหภูมิห้องหรือแช่ในน้ำเย็น แล้วนำมาตัดเปลือกส่วนท้องออกตามวิดีโอ และนำล็อบสเตอร์เรียงลงบนถาดอบให้ครบทั้ง 5 ตัว แล้วพักไว้เตรียมใส่ซอส",
            style: TextStyle(
                fontSize: 16, height: 1.4, color: Colors.grey.shade600),
          ),
          Text(
            'STEP 2 : ทำซอส + อบ',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            "• ตั้งกระทะบนเตาโดยใช้ไฟกลาง ใส่น้ำมันมะกอกลงไปในกระทะ เมื่อน้ำมันร้อนให้ใส่หอมแขกหั่นเต๋าลงไปผัดจนเปลี่ยนเป็นสีน้ำตาลอ่อน ๆ แล้วใส่ไวน์ขาวลงไปผัดให้มีกลิ่นหอม",
            style: TextStyle(
                fontSize: 16, height: 1.4, color: Colors.grey.shade600),
          ),
          Text(
            "• ใส่เนยลงไปในกระทะแล้วใช้ตะหลิวคนให้เนยละลาย จากนั้นใส่แป้งอเนกประสงค์ลงไปผัดให้เข้ากันกับเนย แล้วใส่คุกกิ้งครีมลงคนให้เข้ากัน ปรุงรสด้วยเกลือ พริกไทย พาร์สลีย์อบแห้งลงไปคนให้เข้ากัน เมื่อครีมเริ่มเซตตัวข้นขึ้นแล้วยกลงจากเตาได้เลย",
            style: TextStyle(
                fontSize: 16, height: 1.4, color: Colors.grey.shade600),
          ),
          Text(
            "• นำล็อบสเตอร์ที่เตรียมไว้ (STEP 1) นำมาใส่ซอสลงไปให้ทั่ว ๆ จากนั้นขูดชีสพาร์เมซานลงไป นำเข้าอบด้วยไฟบนล่าง อุณหภูมิ 200 องศาเซลเซียล เป็นเวลา 25 นาที",
            style: TextStyle(
                fontSize: 16, height: 1.4, color: Colors.grey.shade600),
          ),
          Text(
            "STEP 3 : จัดเสิร์ฟ",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            "• เมื่ออบครบเวลาเรียบร้อยแล้ว นำล็อบสเตอร์มาจัดลงบนจานเสิร์ฟคู่กับสลัดผัก เท่านี้เราก็ได้เมนู “ล็อบสเตอร์อบชีส” ร้อน ๆ กินกันที่บ้านแล้วล่ะจ้า",
            style: TextStyle(
                fontSize: 16, height: 1.4, color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }

  Widget refer() {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ทำง่ายใช่ไหมคะ กับเมนู “ล็อบสเตอร์อบชีส” ที่รสชาติเข้มข้นไม่แพ้ร้านเลย โดยเราไม่ต้องเป็นมือโปรในการเตรียมล็อบสเตอร์ก็สามารถทำเมนูนี้ได้ที่บ้าน',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'ที่มา: https://www.wongnai.com/recipes/baked-lobster-with-cheese',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
