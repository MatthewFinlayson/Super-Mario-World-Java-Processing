/**
 * Our "empty" level is a single layer
 * level, doing absolutely nothing.
 */
class LevelR extends MarioLevel {
  LevelR(float levelWidth, float levelHeight) {
    super(levelWidth, levelHeight);

    // main level layer
    LevelLayer layer = new LevelOneMainLayer(this);
    addLevelLayer("Main Layer", layer);
    mario.setPosition(10, height - 160);//1880+16
    layer.addPlayer(mario);

    // And of course some background music!
    SoundManager.load(this, "audio/kr.mp3");
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
