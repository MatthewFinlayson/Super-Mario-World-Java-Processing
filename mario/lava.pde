
class Lava extends BoundedMarioEnemy {

  Lava(float x, float y) {
    super("Lava");
    setPosition(x,y);
    setupStates();
    addBoundary(new Boundary(x-width/2,y+2-height/2,x+width/2,y+2-height/2), true);
  }

  void setupStates() {
    State lava = new State("munch","graphics/enemies/lava.gif");
    addState(lava);
  }

  void collisionOccured(Boundary boundary, Actor other, float[] correction) {
    if (other instanceof Mario) {
      ((Mario)other).hit();
    }
  }
}
