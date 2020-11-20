
class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  Car(float y, float speed, color cl){
    c = cl;
    xpos = width/2;
    ypos = y + width/2;
    xspeed = speed;
  }
  
  void display(){
    rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, 20, 10);
  }
  
  void drive(){
    xpos = xpos + xspeed;
    if (xpos > width){
      xpos = 0;
    }
  }
  
}

Car mycar;
Car yourcar;

void setup(){
  size(512, 512);
  mycar = new Car(0, 1, color(255,0, 0));
  yourcar = new Car(20, 2, color(0,255, 0));
}

void draw(){
  background(0);
  mycar.drive();
  yourcar.drive();
  mycar.display();
  yourcar.display();
}
