
import processing.core.*; 

class DelaySignArc {

  final float START_ANGLE=355;

  // simple class for an arc
  
  PApplet p;

  float angle=START_ANGLE; 
  float locx, locy; //pixels
  float radius;  //degreeds
  float dChange; //degrees


  // Constructor
  public DelaySignArc(PApplet parent) {
    p=parent;
    locx=p.width/2;
    locy=p.height/2;
    radius=p.width/4;
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
    p.strokeWeight(20);
    p.noFill();
    p.stroke(222);
    float arc1 = p.radians(angle);

    // usage: arc(x, y, w, h, start, stop, OPEN)
    p.arc(locx, locy, 
      radius, radius, 
      p.radians(dChange), arc1, 
      p.OPEN);

    angle = angle<dChange ? START_ANGLE: angle-dChange;
  } // method 

  void reset() {
    angle=START_ANGLE;
  }
  //
} // class
//
