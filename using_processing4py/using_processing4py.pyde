
def setup():
  background(0);
  size(512, 512, P3D);
  global location
  location = PVector(width/2, width/2, 0);
  global velocity
  velocity = PVector(2, 3, 1);
  fill(200);
  noStroke();
  lights();
  translate(location.x, location.y, 0);
  sphere(50);


def draw():
  background(0);
  location.add(velocity);
  if location.x > width or location.x < 0:
    velocity.x = -1 * velocity.x;
  
  if location.y > height or location.y < 0:
    velocity.y = -1 * velocity.y;
  
  
  fill(200);
  noStroke();
  lights();
  translate(location.x, location.y, 0);
  sphere(50);
