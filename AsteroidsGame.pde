Spaceship goofy = new Spaceship();
Star[] venus = new Star[100];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Bullet> bully = new ArrayList <Bullet>();
public void setup() {
  size(500, 500);
  for (int i =0; i < 100; i++) {
    venus[i] = new Star();
  }
  for (int i =0; i < 10; i++) {
    rock.add (new Asteroid());
  }
}
public void draw() {
  background(0);
  for (int i =0; i < 100; i++) {
    venus[i].show();
  }
  goofy.show();
  goofy.move();
  for (int i=rock.size()-1; i>=0; i--) {
    Asteroid comet = rock.get(i);
    comet.move();
    if (dist((float)rock.get(i).myCenterX, (float)rock.get(i).myCenterY, (float)goofy.myCenterX, (float)goofy.myCenterY)<20) {
      rock.remove(i);
    } else if (comet.collide()) {
      rock.remove(i);
    } else {
      rock.get(i).show();
    }
  }
  for (int i=bully.size()-1; i >=0; i--) {
    bully.get(i).move();
    bully.get(i).show();

    if (bully.get(i).getX()>width) {

      bully.remove(i);
    } else if (bully.get(i).getY()>height) {

      bully.remove(i);
    } else if (bully.get(i).getY()<0) {

      bully.remove(i);
    } else if (bully.get(i).getX()<0) {

      bully.remove(i);
    }
  }
}
public void keyPressed() {
  if (keyCode == UP) {
    goofy.accelerate(1);
  } else if (keyCode == RIGHT) {
    goofy.turn(10);
  } else if (keyCode == LEFT) {
    goofy.turn(-10);
  } else if (keyCode == SHIFT) {
    goofy.hyperspace();
  } else if (keyCode == ' ') {
    bully.add(new Bullet(goofy));
  }
}
