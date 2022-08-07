//Semester 1
import 'package:flutter/material.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:iquo/calc_working/grad_to_mark.dart';
import 'package:iquo/calc_working/output.dart';

class Sem1 extends StatefulWidget {
  const Sem1({Key? key}) : super(key: key);
  static String id = 'sem1';

  @override
  _Sem1State createState() => _Sem1State();
}

class _Sem1State extends State<Sem1> {
  late int s1, s2, s3, s4, s5, s6, s7, s8;

  double getGPA(){
    return (4*s1+4*s2+4*s3+3*s4+3*s5+3*s6+2*s7+2*s8)/25;
  }

  GradToMark GM = GradToMark();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
                      labelText: "Engineering Graphics    GE8152"),
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
                      labelText: "Communicative English   HS8151"),
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
                      labelText: "Engineering Mathematics - I MA8151"),
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
                      labelText: "Engineering Chemistry   CY8151"),
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
                      labelText: "Problem Solving and Python Programming  GE8151"),
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
                      labelText: "Engineering Physics PH8151"),
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
                      labelText: "Physics and Chemistry Laboratory  BS8161"),
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
                      labelText: "Problem Solving and Python Programming Laboratory  GE8161"),
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
      ),
    );
  }
}

// AwesomeDropDown(
// dropDownList: ['O', 'A+', 'A', 'B+', 'B', 'RA', 'NA']),
