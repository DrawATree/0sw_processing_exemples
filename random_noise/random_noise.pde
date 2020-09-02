float yoff = 0.0;
float previous;

float t = 0;
float n = noise(yoff) * height;

float dir = 1;

void setup () {
  size (800, 600);
  background(204);
}

void draw() {
  previous = n;
  
  
  //yoff = yoff + .01;
  //n = noise(yoff) * height;
  n = random (height);
  
  line (t - 3, previous, t, n);
  
  if (t > width)
    t = 0;
  
  t+= 3;
}