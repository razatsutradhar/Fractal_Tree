class Branch {
  Branch[] branches = new Branch[2];
  Branch(PVector initial, PVector fin, int level, float angle, float dist) {
    stroke(0, 255 - level*25, level*30);
    strokeWeight(1 + level);
    line(initial.x, initial.y, fin.x, fin.y);
    if (level > 0) {
      pushMatrix();
      translate(fin.x, fin.y);
      rotate(radians(angle));
      branches[0] = new Branch(new PVector(0, 0), new PVector(0, -dist*level), level-1, angle, dist);
      popMatrix();

      pushMatrix();
      translate(fin.x, fin.y);
      rotate(radians(-angle));
      branches[1] = new Branch(new PVector(0, 0), new PVector(0, -dist*level), level-1, angle, dist);
      popMatrix();
    }
  }

  void update(PVector initial, PVector fin, int level, float angle) {
    strokeWeight(1 + level);
    line(initial.x, initial.y, fin.x, fin.y);
    try {
      pushMatrix();
      translate(fin.x, fin.y);
      rotate(radians(angle));
      branches[0].update(new PVector(0, 0), new PVector(0, -25*level), level-1, angle);
      popMatrix();

      pushMatrix();
      translate(fin.x, fin.y);
      rotate(radians(-angle));
      branches[1].update(new PVector(0, 0), new PVector(0, -25*level), level-1, angle);
      popMatrix();
    }
    catch(Exception e) {
      println("" + level + e);
    }
  }
  
}
