/**
 * Our "empty" level is a single layer
 * level, doing absolutely nothing.
 */
class LevelMC extends MarioLevel {
  LevelMC(float levelWidth, float levelHeight) {
    super(levelWidth, levelHeight);

    // main level layer
    LevelLayer layer = new LevelMCLayer(this);
    addLevelLayer("Main Layer", layer);
    mario.setPosition(16, height-150);
    layer.addPlayer(mario);

    // And of course some background music!
    SoundManager.load(this, "audio/bg/Overworld.mp3");
  }

  /**
   * If mario loses, we must end the level prematurely:
   */
  void end() {
    SoundManager.pause(this);
    super.end();
  }

  /**
   * But if he wins, we end the level properly:
   */
  void finish() {
    SoundManager.pause(this);
    super.finish();
  }
}
