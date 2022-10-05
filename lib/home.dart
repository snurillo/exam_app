import 'package:badges/badges.dart';
import 'package:exam_app/doctors.dart';
import 'package:exam_app/widgets/doctors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
  static const routeName = '/home';
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: CustomScrollView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            slivers: [
          SliverAppBar(
              expandedHeight: 350,
              stretch: true,
              backgroundColor: Colors.white,
              floating: false,
              elevation: .0,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 8),
                      child: CupertinoTextField(
                        style: TextStyle(fontSize: 14),
                        placeholder: 'Search health issue...',
                        padding: EdgeInsets.only(top: 5),
                        placeholderStyle: const TextStyle(
                            fontSize: 11, color: Color(0xFF8A96BC)),
                        prefix: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            CupertinoIcons.search,
                            size: 20,
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    )
                  ],
                ),
                stretchModes: const [
                  StretchMode.blurBackground,
                  StretchMode.fadeTitle,
                  StretchMode.zoomBackground
                ],
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFB28CFF),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40))),
                    ),
                    Positioned(
                      top: 56,
                      left: 27,
                      right: 20,
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                              Image.asset('assets/images/avatar.png')
                            ],
                          )),
                    ),
                    Positioned(
                      bottom: 225,
                      left: 27,
                      right: 20,
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: const Text(
                            'Welcome back',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          )),
                    ),
                    Positioned(
                      bottom: 125,
                      left: 27,
                      right: 20,
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: const Text(
                            'Let`s find your top doctor!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.start,
                          )),
                    ),
                  ],
                ),
              )),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 26, top: 29, right: 26),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(
                  'Catergories',
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 27),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Doctors_Page.routeName);
                        },
                        child: Catergory(
                          img: 'assets/images/column1.png',
                          title: 'All',
                        ),
                      ),
                      Column(
                        children: [
                          Catergory(
                            img: 'assets/images/column2.png',
                            title: 'Cardiology',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Catergory(
                            img: 'assets/images/column3.png',
                            title: 'Medicine',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Catergory(
                            img: 'assets/images/column4.png',
                            title: 'General',
                          ),
                        ],
                      ),
                    ],
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
              ]),
            ),
          ),
        ]));
  }
}

class Catergory extends StatelessWidget {
  Catergory({
    required this.img,
    required this.title,
    Key? key,
  }) : super(key: key);
  String? img;
  String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            height: 75,
            width: 75,
            child: Image.asset(img.toString())),
        Padding(
          padding: const EdgeInsets.all(7.0),
          child: Text(
            title.toString(),
            style: TextStyle(color: Color(0xFF7D8BB7), fontSize: 11),
          ),
        )
      ],
    );
  }
}
