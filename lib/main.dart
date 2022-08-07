import 'package:flutter/material.dart';
import 'package:iquo/pages/calculator_page.dart';
import 'package:iquo/pages/chat_page.dart';
import 'package:iquo/pages/choice_page.dart';
import 'package:iquo/pages/registration_page.dart';
import 'package:iquo/pages/welcome_page.dart';
import 'package:iquo/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:iquo/calc_working/cgpainput.dart';
import 'package:iquo/calc_working/sem1.dart';
import 'package:iquo/calc_working/sem2.dart';
import 'package:iquo/calc_working/sem3.dart';
import 'package:iquo/calc_working/sem4.dart';
import 'package:iquo/calc_working/sem5.dart';
import 'package:iquo/calc_working/sem6.dart';
import 'package:iquo/calc_working/sem7.dart';
import 'package:iquo/calc_working/sem8.dart';
import 'package:iquo/pages/todo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Quo());
}

class Quo extends StatelessWidget {
  const Quo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ChoicePage.id,
      routes: {
        WelcomePage.id: (context) => WelcomePage(),
        LoginPage.id: (context) => LoginPage(),
        RegistrationPage.id: (context) => RegistrationPage(),
        ChatPage.id: (context) => ChatPage(),
        ChoicePage.id: (context) => ChoicePage(),
        Calculator.id: (context) => Calculator(),
        Sem1.id: (context) => Sem1(),
        Sem2.id: (context) => Sem2(),
        Sem3.id: (context) => Sem3(),
        Sem4.id: (context) => Sem4(),
        Sem5.id: (context) => Sem5(),
        Sem6.id: (context) => Sem6(),
        Sem7.id: (context) => Sem7(),
        Sem8.id: (context) => Sem8(),
        CGPACALC.id: (context) => CGPACALC(),
        TaskSScreen.id: (context)=> TaskSScreen(),
      },
    );
  }
}
