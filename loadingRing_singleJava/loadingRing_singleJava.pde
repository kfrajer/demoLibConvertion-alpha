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

public class loadingRing_singleJava extends PApplet {

  class DelaySignArc {

    final float START_ANGLE=355;

    // simple class for an arc

    float angle=START_ANGLE; 
    float locx, locy; //pixels
    float radius;  //degreeds
    float dChange; //degrees


    // Constructor
    public DelaySignArc() {
      locx=width/2;
      locy=height/2;
      radius=width/4;
      dChange=4;
    }

    //Constructor, setters for position, radius, color attributes, etc.
    //TBD....

    //Update function to be called when any intrinsic par is changed.
    //TBD...

    //Function setDefualt: default configuration inferred from current settings 

    void display() {
      // display the arc

      //arc
      strokeWeight(20);
      noFill();
      stroke(222);
      float arc1 = radians(angle);

      // usage: arc(x, y, w, h, start, stop, OPEN)
      arc(locx, locy, 
        radius, radius, 
        radians(dChange), arc1, 
        OPEN);

      angle = angle<dChange ? START_ANGLE: angle-dChange;      
    } // method 

    void reset() {
      angle=START_ANGLE;
    }
    //
  } // class
  //

  DelaySignArc delayIndicator;

  public void setup() {
    delayIndicator = new DelaySignArc();
    println("World "+millis());
  }

  public void draw() {
    background(50);
    delayIndicator.display();
  }


  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "loadingRing_singleJava" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
