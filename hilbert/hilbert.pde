int order = 1;
int N = int(pow(2, order));
int total = N * N;

PVector[] path = new PVector[total];

void setup(){
  size(512, 512);
  background(0);
  for (int i=0; i < total; i++){
    path[i] = Hilbert(i);
    float len = width / N;
    path[i].mult(len);
    path[i].add(len/2, len/2);
  }
}


PVector Hilbert(int i) {
  PVector[] points = {
    new PVector(0, 0),
    new PVector(0, 1),
    new PVector(1, 1),
    new PVector(1, 0)
  };
  
  return points[i];
}

int counter = 0;
void draw(){
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();
  beginShape();
    for (int i=0; i < total; i++){
      vertex(path[i].x, path[i].y);
    }
  endShape();
}
