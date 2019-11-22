//Global Varibles
PFont titleFont;
//String[] fontList= PFont.list; //To list all fonts available on OS
String title, quit, timestamp, currentTempEdm, currentTempCal, currentTempVan;
String nameEdm, nameCal, nameVan; 
void textSetup() {
 title = " Viet truong's App";
 quit = "X"; 
  
 currentTempEdm= tempEdmonton;
currentTempCal= tempCalgary;
currentTempVan= tempVancover;
 nameEdm= nameEdmonton;
 nameCal= nameCalgary;
 nameVan= nameVancover;
}
 //printArray(fontList);
void textdraw() {
fill(black);
textAlign(CENTER, CENTER); 
textFont(titleFont,20); 
text(title,x,y, rectwidth, rectheight); // string, rect parameters
fill(white);
}
//float textCalculator () {
  //return size; 
  
//}
