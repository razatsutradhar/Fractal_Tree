float angleInit = 0;
float angle = angleInit;
float angleRange = 180;
float distInit = 10;
float dist = distInit;
float distRange = 3;
float t = 0;
int level = 10; 
Branch b;
void setup() {

  fullScreen();
  angleInit = random(10,40);
    b = new Branch(new PVector(0, 0), new PVector(0, -dist*level), level, angle, dist);
}

void draw() {
  background(0);
  fill(255);
  angle = angleInit+=t*10;
  translate(width/2, height/2+50);
  b = new Branch(new PVector(0, 0), new PVector(0, -dist*level), level, radians(angle), dist);
  println(t);
  t+=.01;
}
