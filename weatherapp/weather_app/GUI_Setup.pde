// Global Variables
color black = 0;
float titleX, titleY, titleRecwidth, titleRecHeight;
float quitX, quitY, quitRecWidth, quitRecHeight;
float currentAPIX, currentAPIY, currentAPIRecWidth, currentAPIRecHeight;
float TempX, TempY, TempRecwidth, TempRecHeight;
float EDMx, EDMy, EDMwidth, EDMheight;

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

 currentAPIX = width*0;
 currentAPIY = height*1/10 ;
 currentAPIRecWidth = width*1 ;
 currentAPIRecHeight = height*1/2/10;
 rect(currentAPIX, currentAPIY, currentAPIRecWidth, currentAPIRecHeight);
 //
 TempX= width*0;
 TempY=height*3/20;
 TempRecwidth=width*1;
 TempRecHeight=height*5/10;
 rect(TempX, TempY, TempRecwidth, TempRecHeight);
 }
