import 'package:exam_app/widgets/doctors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Doctors_Page extends StatefulWidget {
  const Doctors_Page({Key? key}) : super(key: key);

  @override
  State<Doctors_Page> createState() => _Doctors_PageState();
  static const routeName = '/doctors';
}

class _Doctors_PageState extends State<Doctors_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Top Doctor'),
      ),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 26, vertical: 8),
                child: CupertinoTextField(
                  style: TextStyle(fontSize: 15),
                  placeholder: 'Search Doctor',
                  padding: EdgeInsets.only(top: 5),
                  placeholderStyle:
                      const TextStyle(fontSize: 15, color: Color(0xFF8A96BC)),
                  prefix: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(
                      CupertinoIcons.search,
                      size: 20,
                    ),
                  ),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 240, 240, 240)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Doctors(
                img: 'assets/images/user2.png',
                name: 'Dr. Maria Waston',
                adress: 'Heart Surgeon, London, England',
                ration: '4,8',
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Doctors(
                  img: 'assets/images/user1.png',
                  name: 'Dr. Stevi Jessi',
                  adress: 'General dentist',
                  ration: '4,5',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Doctors(
                  img: 'assets/images/user4.png',
                  name: 'Dr. Kathy Pacheco',
                  adress: 'Heart Surgeon, London, England',
                  ration: '4,5',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Doctors(
                  img: 'assets/images/user1.png',
                  name: 'Dr. Stevi Jessi',
                  adress: 'General dentist',
                  ration: '4,5',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Doctors(
                  img: 'assets/images/user3.png',
                  name: 'Dr. Rodger Struck',
                  adress: 'Heart Surgeon, London, England',
                  ration: '4,5',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Doctors(
                  img: 'assets/images/user1.png',
                  name: 'Dr. Stevi Jessi',
                  adress: 'General dentist',
                  ration: '4,5',
                ),
              ),
            ],
          )),
    );
  }
}
