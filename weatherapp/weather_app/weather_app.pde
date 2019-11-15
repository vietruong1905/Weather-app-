// open weather map app

void setup(){
 buildingURL();
  APICall();
  unwrapToVariables();
  size(500,600);// Add Screen Size Checker
  // And fullscreen() option, with display Size Checker
  GUI_Setup();
}


void draw(){// city call, see procedure using boolean & button
//choice of three cities: Edmonton, Vancouver, Toronto
}
void mousePressed(){
 APICall();
   unwrapToVariables();
 println(apiCurrentDateCall);
}

void keyPressed(){
  
}
