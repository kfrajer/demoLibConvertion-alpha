//REFERENCE: Making a library using CLI: https://discourse.processing.org/t/including-shared-pde-files-across-projects/1701/14


import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class loadingRing_splitJava extends PApplet {

  DelaySignArc delayIndicator;

  public void setup() {
    delayIndicator = new DelaySignArc(this);
  }

  public void draw() {
    background(50);
    delayIndicator.display();
  }


  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "loadingRing_splitJava" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
