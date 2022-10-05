import 'package:badges/badges.dart';
import 'package:exam_app/appointment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Doctors extends StatelessWidget {
  Doctors({
    required this.img,
    required this.ration,
    required this.name,
    required this.adress,
    Key? key,
  }) : super(key: key);
  String? img;
  String? ration;
  String? name;
  String? adress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365,
      height: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color.fromARGB(255, 237, 237, 237))),
      padding: EdgeInsets.only(top: 17, left: 13),
      child: Row(
        children: [
          Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    img.toString(),
                    height: 60,
                    width: 60,
                  )),
              Padding(
                padding: EdgeInsets.only(top: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Badge(
                        padding: EdgeInsets.all(7),
                        elevation: 0,
                        borderSide: BorderSide(width: 2, color: Colors.white),
                        position: BadgePosition.topEnd(top: -73, end: -40),
                        badgeColor: const Color(0xff20e070),
                        child: Icon(
                          Icons.star,
                          size: 15,
                          color: Color.fromARGB(255, 178, 233, 179),
                        )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        '$ration',
                        style:
                            TextStyle(color: Color(0xFF080C2F), fontSize: 11),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(left: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '$adress',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF7D8BB7)),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Appointment.routeName);
                        },
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Appointment'),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 244, 242, 242)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            Icons.chat_bubble_rounded,
                            size: 17,
                            color: Color(0xFFB28CFF),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 244, 242, 242)),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            Icons.favorite_outline,
                            size: 17,
                            color: Color(0xFFB28CFF),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 244, 242, 242)),
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
