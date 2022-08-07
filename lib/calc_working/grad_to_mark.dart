class GradToMark{
  late int _x;
  late int _sem;
  int getGrade(String grade){
    if(grade=='O'){_x=10;}
    else if(grade=='A+'){_x=9;}
    else if(grade=='A'){_x=8;}
    else if(grade=='B+'){_x=7;}
    else if(grade=='B'){_x=6;}
    else {_x=0;}

    return _x;
}
  int getSEM(String sel){
    if(sel=='1'){_sem=1;}
    else if(sel=='2'){_sem=2;}
    else if(sel=='3'){_sem=3;}
    else if(sel=='4'){_sem=4;}
    else if(sel=='5'){_sem=5;}
    else if(sel=='6'){_sem=6;}
    else if(sel=='7'){_sem=7;}
    else if(sel=='8'){_sem=8;}
    else {_sem=1;}

    return _sem;
  }

}