// Open Weather Map App
// Global Variables
String edmTemp, calgTemp, rdTemp;

void setup() {
  buildingURL();
  APICall();
  unwrapToVariables();
  size(500, 600); //Add Screen Size Checker
  // Add fullScreen() option, with Display Size Checker
  GUI_Setup();

  println("Start of Console");
  textSetup();

  textDraw(title, titleFont, height, #2C08FF, CENTER, CENTER, titleX, titleY, titleRectWidth, titleRectHeight); //Title
  textDraw(quit, titleFont, height, #2C08FF, CENTER, CENTER, quitX, quitY, quitRectWidth, quitRectHeight); //Quit Button
  //String strDate = Date.format(apiCurrentDateCall);
  SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy"); 
  formatter = new SimpleDateFormat("E, dd MMM yyyy HH:mm:ss z");  
  String strDate = formatter.format(apiCurrentDateCall);
  textDraw(strDate, titleFont, height, #2C08FF, LEFT, CENTER, currentAPIX, currentAPIY, currentAPIRectWidth, currentAPIRectHeight); //Time Stamp
  println("in");
  textDraw(nameEdm, titleFont, height, #2C08FF, LEFT, CENTER, EDMx, EDMy, EDMwidth, EDMheight); //Edmonton
  println(nameEdm);
  textDraw(nameCalg, titleFont, height, #2C08FF, LEFT, CENTER, Calx, Caly, Calwidth, Calheight); //Calgary
  textDraw(nameRD, titleFont, height, #2C08FF, LEFT, CENTER, Vanx, Vany, Vanwidth, Vanheight); //Red Deer
}

void draw() {
  // City Call, see procedure using Boolean & Button
  // Choice of Three Cities: Edmonton, Calgary, Red Deer
}

void mousePressed() {
  APICall();
  unwrapToVariables();
  println(apiCurrentDateCall);
  // City Call, see procedure using Boolean & Button
  //
  
  if ( mouseX>EDMx && mouseX<EDMx+EDMwidth && mouseY>EDMy && mouseY<EDMy+EDMheight ) {
    edmTemp = String.valueOf(tempEdmonton);
    rect(EDMx, EDMy, EDMwidth, EDMy);
    textDraw(edmTemp, titleFont, height, #2C08FF, CENTER, CENTER, EDMx, EDMy, EDMwidth, EDMy); //Edmonton
    println(tempEdmonton, edmTemp);
  }
  //
  if (mouseX>Calx && mouseX<Calx+Calwidth && mouseY>Caly && mouseY<Caly+Calheight) {
    calgTemp = String.valueOf(tempCalgary);
    rect(Calx, Caly, Calwidth, Calheight);
    textDraw(calgTemp, titleFont, height, #2C08FF, CENTER, CENTER, Calx, Caly, Calwidth, Calheight); //Calgary
    println(tempCalgary, calgTemp);
  }
  //
  
  if (mouseX>Vanx && mouseX<Vanx+Vanwidth && mouseY>Vany && mouseY<Vany+Vanheight) {
    rdTemp = String.valueOf(tempRedDeer);
    rect(TempX, TempY, TempRecwidth, TempRecHeight);
    textDraw(rdTemp, titleFont, height, #2C08FF, CENTER, CENTER, TempX, TempY, TempRecwidth, TempRecHeight); //Calgary
    println(tempRedDeer, rdTemp);
  }
  
  //
}

void keyPressed() {
}
