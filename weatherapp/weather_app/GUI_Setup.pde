
// Global Variables
color black = 0;
float titleX, titleY, titleRecwidth, titleRecHeight;
float quitX, quitY, quitRecWidth, quitRecHeight;
float TempX, TempY, TempRecwidth, TempRecHeight;
float Tmx, Tmy, Tmwidth, Tmheight;
float EDMx, EDMy, EDMwidth, EDMheight;
float Calx, Caly, Calwidth, Calheight;
float Vanx, Vany, Vanwidth, Vanheight;


void GUI_Setup() {
  background(black); // Add dark mode
 // rect(
 titleX = width*0;
 titleY= height*0;
 titleRecwidth = width*9/10;
 titleRecHeight= height*1/10 ;
 rect( titleX, titleY, titleRecwidth, titleRecHeight);
 //
 quitX = width* 9/10;
 quitY = height *0;
 quitRecWidth = width *1/10;
 quitRecHeight = height *1/10;
 rect(quitX, quitY, quitRecWidth, quitRecHeight);
//
  
 //
 TempX= width*1/5;
 TempY=height*1/10;
 TempRecwidth=width*3/5;
 TempRecHeight=height*2.5/10;
 rect(TempX, TempY, TempRecwidth, TempRecHeight);
//
 Tmx= width*1/10;
 Tmy= height*3.5/10;
 Tmwidth= width*1/3;
 Tmheight= height*3/5;
 rect(Tmx, Tmy, Tmwidth, Tmheight);
 //
 EDMx= width*0;
 EDMy= height*13/20;
 EDMwidth= width*1/3;
 EDMheight= height*7/20;
 rect( EDMx, EDMy, EDMwidth, EDMheight);
 //
 Calx= width*1/3;
 Caly= height*13/20;
 Calwidth= width*1/3;
 Calheight= height*7/20;
 rect(Calx, Caly, Calwidth, Calheight);
 //
 Vanx= width*2/3;
 Vany= height*13/20;
 Vanwidth= width*1/3;
 Vanheight= height*7/20;
  rect(Vanx, Vany, Vanwidth, Vanheight);
 
 
 
 }
