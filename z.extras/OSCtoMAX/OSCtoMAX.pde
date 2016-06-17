/**
 * Template for OSC communication with Max
 * Ben Taylor - Goucher D.Arts Fall 2014
 *
 * Based on oscP5sendreceive by andreas schlegel
 * oscP5: http://www.sojamo.de/oscP5
 */
 
import oscP5.*;
import netP5.*;
  
OscP5 oscP5;
NetAddress destination;

void setup() {
  size(400,400);
  // start oscP5, listening for incoming messages at port 4001
  oscP5 = new OscP5(this, 4002);
  // define target IP and port 4000
  destination = new NetAddress("localhost",4001);
}

void draw() {
  
}

void mouseMoved() {
  // create an OSC message, declare path
  OscMessage msg = new OscMessage("/ben");
  // declare its value
  msg.add(mouseX);
  // send the message
  oscP5.send(msg, destination); 
}

// incoming osc message are forwarded to the oscEvent method
void oscEvent(OscMessage incoming) {
  /* print the incoming osc message info */
  print("\n osc path: "+incoming.addrPattern());
  print("\n integer value: "+incoming.get(0).intValue());
  println("\n data type: "+incoming.typetag());
}
