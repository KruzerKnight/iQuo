//Semester 1
import 'package:flutter/material.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:iquo/calc_working/grad_to_mark.dart';
import 'package:iquo/calc_working/output.dart';

class Sem7 extends StatefulWidget {
  const Sem7({Key? key}) : super(key: key);
  static String id = 'sem7';

  @override
  _Sem7State createState() => _Sem7State();
}

class _Sem7State extends State<Sem7> {
  late int s1, s2, s3, s4, s5, s6, s7, s8;

  double getGPA(){
    return (3*s1+3*s2+3*s3+3*s4+3*s5+3*s6+2*s7+2*s8)/22;
  }

  GradToMark GM = GradToMark();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GPA CALCULATOR'),
        backgroundColor: Color(0xff144292),
      ),
      body: SafeArea(
        child: ListView(

          children: [
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextDropdownFormField(
                options: ["O", "A+", "A", "B+", "B", "RA", "NA"],
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Antennas and Microwave Engineering  EC8701"),
                dropdownHeight: 180,
                onChanged: (dynamic str) {
                  s1 = GM.getGrade(str);
                },
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextDropdownFormField(
                options: ["O", "A+", "A", "B+", "B", "RA", "NA"],
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Optical Communication   EC8751"),
                dropdownHeight: 180,

                onChanged: (dynamic str) {
                  s2 = GM.getGrade(str);
                },
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextDropdownFormField(
                options: ["O", "A+", "A", "B+", "B", "RA", "NA"],
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Embedded and Real Time Systems  EC8791"),
                dropdownHeight: 180,
                onChanged: (dynamic str) {
                  s3 = GM.getGrade(str);
                },
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextDropdownFormField(
                options: ["O", "A+", "A", "B+", "B", "RA", "NA"],
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Ad Hoc and Wireless Sensor Networks    EC8702"),
                dropdownHeight: 180,
                onChanged: (dynamic str) {
                  s4 = GM.getGrade(str);
                },
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextDropdownFormField(
                options: ["O", "A+", "A", "B+", "B", "RA", "NA"],
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Professional Elective – III"),
                dropdownHeight: 180,
                onChanged: (dynamic str) {
                  s5 = GM.getGrade(str);
                },
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextDropdownFormField(
                options: ["O", "A+", "A", "B+", "B", "RA", "NA"],
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Open Elective – II"),
                dropdownHeight: 180,
                onChanged: (dynamic str) {
                  s6 = GM.getGrade(str);
                },
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextDropdownFormField(
                options: ["O", "A+", "A", "B+", "B", "RA", "NA"],
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Embedded Laboratory   EC8711"),
                dropdownHeight: 180,
                onChanged: (dynamic str) {
                  s7 = GM.getGrade(str);
                },
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextDropdownFormField(
                options: ["O", "A+", "A", "B+", "B", "RA", "NA"],
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Advanced Communication Laboratory   EC8761"),
                dropdownHeight: 180,
                onChanged: (dynamic str) {
                  s8 = GM.getGrade(str);
                },
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0,20.0,50.0,20.0),
              child: Material(
                color: Colors.redAccent,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OutputPage(
                               getGPA(),
                            ),
                        ),
                    );
                  },

                  height: 42.0,
                  child: Text(
                    'Get Result',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

// AwesomeDropDown(
// dropDownList: ['O', 'A+', 'A', 'B+', 'B', 'RA', 'NA']),
