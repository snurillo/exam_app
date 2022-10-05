import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  State<Appointment> createState() => _AppointmentState();
  static const routeName = '/appointmet';
}

bool? isSelected;
List week = [
  DaysOfWeek(
    isSelected: false,
    day: '6',
    dayOfWeek: 'Mon',
  ),
  DaysOfWeek(
    isSelected: false,
    day: '7',
    dayOfWeek: 'Tue',
  ),
  DaysOfWeek(
    isSelected: false,
    day: '8',
    dayOfWeek: 'Wed',
  ),
  DaysOfWeek(
    isSelected: true,
    day: '9',
    dayOfWeek: 'Thu',
  ),
  DaysOfWeek(
    isSelected: false,
    day: '10',
    dayOfWeek: 'Fri',
  ),
  DaysOfWeek(
    isSelected: false,
    day: '11',
    dayOfWeek: 'Sat',
  ),
  DaysOfWeek(
    isSelected: false,
    day: '12',
    dayOfWeek: 'Sun',
  )
];

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Appointment',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 25),
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 222, 210, 244),
                    borderRadius: BorderRadius.circular(25)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'assets/images/user2.png',
                    fit: BoxFit.cover,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                'Dr. Maria Waston',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/column2.png',
                    height: 12,
                    width: 12,
                  ),
                  Text(
                    'Cardio specialist',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7D8BB7)),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 17),
              padding: EdgeInsets.all(15),
              height: 106,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xffB28CFF),
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Statistics(
                      number: '350+',
                      title: 'Patients',
                      textColor: Color(0xffB28CFF),
                    ),
                    Statistics(
                        number: '15+',
                        title: 'Exp. Year',
                        textColor: Color(0xff9DEAC0)),
                    Statistics(
                        number: '284+',
                        title: 'Reviews',
                        textColor: Color(0xffFF9A9A))
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(left: 36, top: 28, right: 36),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'About Doctor',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                      'Dr. Maria Waston is the top most Cardiologist specialist in Nanyang Hospotalat London. She is available for private consultation.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF8A96BC))),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 36, top: 28, right: 36),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Schedules',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.chevron_right,
                            color: Color(0xFF8A96BC),
                            size: 15,
                          ),
                          label: Text(
                            'Augest',
                            style: TextStyle(
                                color: Color(0xFF8A96BC), fontSize: 12),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 76,
              margin: EdgeInsets.only(left: 20, top: 18),
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: week.length,
                itemBuilder: (context, index) => week[index],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 41),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Visit hour',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Hour(
                        isSelected: false,
                      ),
                      Hour(
                        isSelected: false,
                      ),
                      Hour(
                        isSelected: true,
                      ),
                      Hour(
                        isSelected: false,
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Hour(
                          isSelected: false,
                        ),
                        Hour(
                          isSelected: false,
                        ),
                        Hour(
                          isSelected: false,
                        ),
                        Hour(
                          isSelected: false,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 340,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Color(0xFFB28CFF)),
              child: Text(
                'Book appointmet',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ]),
        ),
      ),
    );
  }
}

class Hour extends StatelessWidget {
  Hour({
    required this.isSelected,
    Key? key,
  }) : super(key: key);
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 76,
      decoration: BoxDecoration(
          color: isSelected == true ? Color(0xFFB28CFF) : Colors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        '12:00 AM',
        style: TextStyle(
          color: isSelected == false ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}

class DaysOfWeek extends StatelessWidget {
  DaysOfWeek({
    required this.day,
    required this.dayOfWeek,
    required this.isSelected,
    this.onPressed,
    Key? key,
  }) : super(key: key);
  String? day;
  String? dayOfWeek;
  bool? isSelected;
  VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
          color: isSelected == true ? Color(0xFFB28CFF) : Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color.fromARGB(255, 235, 235, 235))),
      height: 69,
      width: 65,
      child: Column(
        children: [
          Text(
            '$day',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: isSelected == true ? Colors.white : Colors.black,
            ),
          ),
          Text('$dayOfWeek',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: isSelected == true ? Colors.white : Colors.black,
              ))
        ],
      ),
    );
  }
}

class Statistics extends StatelessWidget {
  Statistics({
    required this.number,
    required this.title,
    this.textColor,
    Key? key,
  }) : super(key: key);

  String? number;
  String? title;
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104,
      height: 76,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$number',
            style: TextStyle(
                color: textColor != null ? textColor : Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3),
            child: Text(
              '$title',
              style: TextStyle(
                  color: Color(0xff8A96BC),
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
