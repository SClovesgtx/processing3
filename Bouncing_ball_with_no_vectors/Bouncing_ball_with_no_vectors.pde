//float x;
//float y;
//float xspeed;
//float yspeed;

PVector location;
PVector velocity;

void setup(){
  size(1000, 500);
  background(0);
  location = new PVector(width/2, width/2);
  velocity = new PVector(2, 3);
  stroke(0);
  fill(200);
  ellipse(location.x, location.y, 50, 50);
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
  
  stroke(0);
  fill(200);
  ellipse(location.x, location.y, 50, 50);
}
