import 'package:flutter/material.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:iquo/calc_working/grad_to_mark.dart';
import 'package:iquo/calc_working/output.dart';

class Sem5 extends StatefulWidget {
  const Sem5({Key? key}) : super(key: key);
  static String id = 'sem5';

  @override
  _Sem5State createState() => _Sem5State();
}

class _Sem5State extends State<Sem5> {
  late int s1, s2, s3, s4, s5, s6, s7, s8, s9;
  double getGpa() {
    return (3 * s1 +
            4 * s2 +
            3 * s3 +
            3 * s4 +
            3 * s5 +
            3 * s6 +
            2 * s7 +
            2 * s8 +
            2 * s9) /
        25;

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
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextDropdownFormField(
                options: ["O", "A+", "A", "B+", "B", "RA", "NA"],
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Digital Communications     EC8501"),
                dropdownHeight: 180,
                onChanged: (dynamic str) {
                  s1 = GM.getGrade(str);
                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextDropdownFormField(
                options: ["O", "A+", "A", "B+", "B", "RA", "NA"],
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText:
                        "Discrete Time Digital Signal Processing EC8553"),
                dropdownHeight: 180,
                onChanged: (dynamic str) {
                  s2 = GM.getGrade(str);
                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextDropdownFormField(
                options: ["O", "A+", "A", "B+", "B", "RA", "NA"],
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Computer Architecture     EC8552"),
                dropdownHeight: 180,
                onChanged: (dynamic str) {
                  s3 = GM.getGrade(str);
                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextDropdownFormField(
                options: ["O", "A+", "A", "B+", "B", "RA", "NA"],
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Communication Networks    EC8551"),
                dropdownHeight: 180,
                onChanged: (dynamic str) {
                  s4 = GM.getGrade(str);
                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextDropdownFormField(
                options: ["O", "A+", "A", "B+", "B", "RA", "NA"],
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Proffesional Elective 1"),
                dropdownHeight: 180,
                onChanged: (dynamic str) {
                  s5 = GM.getGrade(str);
                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextDropdownFormField(
                options: ["O", "A+", "A", "B+", "B", "RA", "NA"],
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Open Elective 1"),
                dropdownHeight: 180,
                onChanged: (dynamic str) {
                  s6 = GM.getGrade(str);
                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextDropdownFormField(
                options: ["O", "A+", "A", "B+", "B", "RA", "NA"],
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Digital Signal  Processing Laboratory EC8562"),
                dropdownHeight: 180,
                onChanged: (dynamic str) {
                  s7 = GM.getGrade(str);
                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextDropdownFormField(
                options: ["O", "A+", "A", "B+", "B", "RA", "NA"],
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Communication Systems Laboratory  EC8561"),
                dropdownHeight: 180,
                onChanged: (dynamic str) {
                  s8 = GM.getGrade(str);
                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextDropdownFormField(
                options: ["O", "A+", "A", "B+", "B", "RA", "NA"],
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Communication Networks Laboratory EC8563"),
                dropdownHeight: 180,
                onChanged: (dynamic str) {
                  s9 = GM.getGrade(str);
                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
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
                          getGpa(),
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
