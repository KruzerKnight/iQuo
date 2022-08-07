import 'package:flutter/material.dart';

class OutputCGPAPage extends StatelessWidget {
  OutputCGPAPage(@required this.result);
  final double result;
  String getCompliment(){
    if(result>9.5)
    {return 'Excellent Grade, Keep it up Champ!!';}
    else if(result>9.0){return 'Marvelous !!';}
    else if(result>8.5){return 'Only Little Steps to the Top';}
    else if(result>8.0){return 'Wohoo, Just A Little More';}
    else if(result>7.5){return 'Wohoo, You are on the correct way';}
    else if(result>7.0){return 'Aim a litte Bit Higher';}
    else{return 'Better Luck Next Time';}
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
          title: Text('CGPA CALCULATOR'),
          backgroundColor: Color(0xff144292),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(14.0),
                alignment: Alignment.bottomCenter,
                child: Text(
                  'YOUR CGPA',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Text(result.toStringAsFixed(3),style: (TextStyle(color: Colors.white,fontSize: 40.0)),),
                    Text(getCompliment(),style: (TextStyle(color: Colors.white))),
                  ],
                ),
              ),
            ),
            Material(
              color: Colors.redAccent,
              child: MaterialButton(
                child: Text('RE - CALCULATE',
                style: TextStyle(color: Colors.white),),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
