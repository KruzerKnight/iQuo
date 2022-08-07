import 'package:flutter/material.dart';
import 'package:iquo/constants.dart';
import 'package:iquo/pages/todo.dart';
import 'chat_page.dart';
import 'calculator_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

const String _url2 = 'http://students.psgitech.ac.in/';
const String _url1 = 'https://coe1.annauniv.edu/home/index.php';

class ChoicePage extends StatefulWidget {
  const ChoicePage({Key? key}) : super(key: key);
  static String id = "choice_page";

  @override
  _ChoicePageState createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {

  void _launchURL2() async{
    if(!await launch(_url2,forceWebView: true)) throw 'Could not launch $_url2';
  }
  void _launchURL1() async{
    if(!await launch(_url1,forceWebView: true)) throw 'Could not launch $_url2';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff33ccff),
            Color(0xff),
          ]
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: null,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add_circle_outlined), onPressed: () {
              Navigator.pushNamed(context,TaskSScreen.id);
            }),
            IconButton(icon: Icon(Icons.perm_identity), onPressed: () {}),
          ],
          title: Text('iQuo',
            style: GoogleFonts.balooThambi(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              textStyle: TextStyle(color: Colors.white),
            ),),
          backgroundColor: Color(0xff144292),
        ),
        body: SafeArea(

          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context,ChatPage.id);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.mail, size: 40,color: Colors.white,),
                          SizedBox(
                            width: 15,
                          ),
                          Text('Messages',style: GoogleFonts.cinzel(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            textStyle: TextStyle(color: Colors.white,),
                          ),),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Calculator.id);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.calculate,size: 40,color: Colors.white,),
                          SizedBox(
                            width: 15,
                          ),
                          Text('CGPA Calculator',style: GoogleFonts.cinzel(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            textStyle: TextStyle(color: Colors.white,),
                          ),),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: _launchURL1,
                      child: Row(
                        children: [
                          Icon(Icons.web_asset,size: 40,color: Colors.white,),
                          SizedBox(
                            width: 15,
                          ),
                          Text('Anna University',style: GoogleFonts.cinzel(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            textStyle: TextStyle(color: Colors.white,),
                          ),),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed:_launchURL2,
                      child: Row(
                        children: [
                          Icon(Icons.book_online,size: 40,color: Colors.white,),
                          SizedBox(
                            width: 15,
                          ),
                          Text('Student Login',style: GoogleFonts.cinzel(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            textStyle: TextStyle(color: Colors.white,),
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
