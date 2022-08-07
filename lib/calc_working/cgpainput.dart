import 'package:flutter/material.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:iquo/calc_working/grad_to_mark.dart';
import 'package:iquo/calc_working/cgpa.dart';


class CGPACALC extends StatefulWidget {
  const CGPACALC({Key? key}) : super(key: key);
  static String id = 'cgpainput';


  @override
  _CGPACALCState createState() => _CGPACALCState();
}

class _CGPACALCState extends State<CGPACALC> {
  double s1=0, s2=0, s3=0, s4=0, s5=0, s6=0, s7=0, s8=0;
  late String conv;
  int total=25;
  GradToMark GM = GradToMark();

  double CgpaCalc(){
    return (s1*25+s2*25+s3*25+s4*24+s5*25+s6*24+s7*22+s8*16)/total;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Text('CGPA'),backgroundColor: Color(0xff144292),
      ),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                children: [
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: TextDropdownFormField(
                      options: ["1","2","3","4","5","6","7","8"],
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.arrow_drop_down),
                          labelText: "No: of Semesters"),
                      dropdownHeight: 180,
                      onChanged: (dynamic str) {
                        switch(GM.getSEM(str)){
                          case 1: total=25; break;
                          case 2: total=50; break;
                          case 3: total=75; break;
                          case 4: total=99; break;
                          case 5: total=124; break;
                          case 6: total=148; break;
                          case 7: total=170; break;
                          case 8: total=186; break;
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      SizedBox(width: 20.0),
                      Expanded(
                        child: TextField(
                          onChanged:(value){
                            conv=value;
                            s1=double.parse(conv);
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'SEMESTER 1',
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Expanded(
                        child: TextField(
                          onChanged:(value){
                            conv=value;
                            s2=double.parse(conv);
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'SEMESTER 2',
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      SizedBox(width: 20.0),
                      Expanded(
                        child:  TextField(
                          onChanged:(value){
                            conv=value;
                            s3=double.parse(conv);
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'SEMESTER 3',
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Expanded(
                        child:  TextField(
                          onChanged:(value){
                            conv=value;
                            s4=double.parse(conv);
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'SEMESTER 4',
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      SizedBox(width: 20.0),
                      Expanded(
                        child:  TextField(
                          onChanged:(value){
                            conv=value;
                            s5=double.parse(conv);
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'SEMESTER 5',
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Expanded(

                        child:  TextField(
                          onChanged:(value){
                            conv=value;
                            s6=double.parse(conv);
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'SEMESTER 6',
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      SizedBox(width: 20.0),
                      Expanded(
                        child: TextField(
                          onChanged:(value){
                            conv=value;
                            s7=double.parse(conv);
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'SEMESTER 7',
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Expanded(
                        child:TextField(
                          onChanged:(value){
                            conv=value;
                            s8=double.parse(conv);
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'SEMESTER 8',
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
                    child: Material(
                      color: Colors.blue,
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(25.0),
                      child: MaterialButton(
                        minWidth: 100,
                        onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OutputCGPAPage(CgpaCalc())
                          ),
                        );},
                        child: Text('CALCULATE'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
