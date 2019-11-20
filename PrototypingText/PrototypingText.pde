 // Minimum code
 color white =255;  
 color black = 0;
 float x, y, rectwidth, rectheight;
 x = width*1/4;
 y = height*0;
 rectwidth = width*1/2;
 rectheight= height*1/10;
 
 //fullscreen(); // Student only
 size (500,600); 
 String title = "luong an lon ahihi";
 PFont titleFont;
 println("Start of Console");
 titleFont = createFont("BerlinSansFBDemi-Bold-48",55);
 
 rect(x,y, rectwidth, rectheight);
 fill(black);
 textAlign(CENTER, CENTER); 
 textFont(titleFont,20); 
 text(title,x,y, rectwidth, rectheight); // string, rect parameters
 fill(white);
