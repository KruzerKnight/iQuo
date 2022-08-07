//Semester 1
import 'package:flutter/material.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:iquo/calc_working/grad_to_mark.dart';
import 'package:iquo/calc_working/output.dart';

class Sem8 extends StatefulWidget {
  const Sem8({Key? key}) : super(key: key);
  static String id = 'sem8';

  @override
  _Sem8State createState() => _Sem8State();
}

class _Sem8State extends State<Sem8> {
  late int s1, s2, s3;

  double getGPA(){
    return (3*s1+3*s2+10*s3)/16;
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
                    labelText: "Professional Elective IV"),
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
                    labelText: "Professional Elective V"),
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
                    labelText: "Project Work    EC8811"),
                dropdownHeight: 180,
                onChanged: (dynamic str) {
                  s3 = GM.getGrade(str);
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
