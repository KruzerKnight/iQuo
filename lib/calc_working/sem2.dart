//Semester 1
import 'package:flutter/material.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:iquo/calc_working/grad_to_mark.dart';
import 'package:iquo/calc_working/output.dart';

class Sem2 extends StatefulWidget {
  const Sem2({Key? key}) : super(key: key);
  static String id = 'sem2';

  @override
  _Sem2State createState() => _Sem2State();
}

class _Sem2State extends State<Sem2> {
  late int s1, s2, s3, s4, s5, s6, s7, s8;


  double getGPA(){
    return (4*s1+4*s2+4*s3+3*s4+3*s5+3*s6+2*s7+2*s8)/25;

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
                    labelText: "CIRCUIT ANALYSIS    EC8251"),
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
                    labelText: "TECHNICAL ENGLISH   HS8251"),
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
                    labelText: "ENGINEERING MATHEMATICS – II    MA8251"),
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
                    labelText: "ELECTRONIC DEVICES  EC8252"),
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
                    labelText: "BASIC ELECTRICAL AND INSTRUMENTATION ENGINEERING  BE8254"),
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
                    labelText: "PHYSICS FOR ELECTRONICS ENGINEERING PH8253 "),
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
                    labelText: "ENGINEERING PRACTICES LABORATORY   GE8261"),
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
                    labelText: "CIRCUITS AND DEVICES LABORATORY    EC8261"),
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
