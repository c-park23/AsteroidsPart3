class Bullet extends Floater {
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY= theShip.getY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(6.0);
  }
  void show() {
    fill(255, 0, 0);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
  public double getXspeed() {
    return myXspeed;
  }
  public double getYspeed() {
    return myYspeed;
  }
}
