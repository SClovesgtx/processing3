//float x;
//float y;
//float xspeed;
//float yspeed;

PVector location;
PVector velocity;

void setup(){
  background(0);
  location = new PVector(width/2, width/2, 0);
  velocity = new PVector(2, 3, 1);
  size(512, 512, P3D);
  fill(200);
  noStroke();
  lights();
  translate(location.x, location.y, 0);
  sphere(50);
}

void draw(){
  background(0);
  location.add(velocity);
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = -1 * velocity.x;
  }
  if ((location.y > height) || (location.y < 0)){
    velocity.y = -1 * velocity.y;
  }
  
  fill(200);
  noStroke();
  lights();
  translate(location.x, location.y, 0);
  sphere(50);
}
