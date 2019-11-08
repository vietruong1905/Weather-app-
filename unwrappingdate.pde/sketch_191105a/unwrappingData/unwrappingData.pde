 

// Global Variables
 
 void setup() {
   size( 500, 600);
   buildingURL();
   APICall();
   JSONObject weather= jsonCurrentEdmonton.getJSONObject("weather");
   JSONObject all = weather.getJSONObject(0);
   String main = weather.getString("main")
   println(main);
 }
 
 void draw() {}
 
 void mousePressed() {}
 
 void keyPressed () {}
