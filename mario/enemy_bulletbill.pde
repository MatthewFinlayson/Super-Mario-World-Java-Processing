/***************************************
 *                                     *
 *      INTERACTORS: BULLET BILL       *
 *                                     *
 ***************************************/


/**
 * The big bullet that comes out of nowhere O_O
 */
class BulletBill extends MarioEnemy {

  /**
   * Relatively straight-forward constructor
   */
  BulletBill(float mx, float my) {
    super("Bullet Bill", 1, 1);
    setPosition(mx, my);
    setImpulse(-0.5, 0);
    setForces(0, 0);
    setAcceleration(0, 0);
    setupStates();
    // Banzai Bills do not care about boundaries or NPCs!
    setPlayerInteractionOnly(true);
    persistent = false;
  }

  /**
   * Bullet bill flies with great purpose.
   */
  void setupStates() {
    State flying = new State("flying", "graphics/enemies/bulletbill.gif");
    SoundManager.load(flying, "audio/thump.mp3");
    addState(flying);
    setCurrentState("flying");
    SoundManager.play(flying);
  }

  /**
   * What happens when we touch another actor?
   */
  void overlapOccurredWith(Actor other, float[] direction) {
    if (other instanceof Mario) {
      Mario m = (Mario) other;
      m.hit();
    }
  }
  
  /**
   * Nothing happens at the moment
   */
  void hit() {}
}
