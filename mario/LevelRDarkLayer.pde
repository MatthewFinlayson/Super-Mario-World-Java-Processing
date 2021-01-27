class LevelRDarkLayer extends MarioLayer{
  
  LevelRDarkLayer(Level parent) {
    super(parent);

    // repeating background sprite image
    Sprite bgsprite = new Sprite("graphics/backgrounds/bonus.gif");
    bgsprite.align(RIGHT, TOP);
    TilingSprite backdrop = new TilingSprite(bgsprite, 0, 0, width, height);
    addBackgroundSprite(backdrop);      

    // side walls
    addBoundary(new Boundary(-1,0, -1,height));
    addBoundary(new Boundary(width+1,height, width+1,0));
    
    // set up ground
    addGround("cave", 0, height-16, width, height);
    addUpsideDownGround("cave", 0, 0, width, 16);

    // set up the tubes
    addTube(0, height-16, null);
    addTube(width-32, height-16, new LevelTeleportTrigger("Level One",  width-30,height-34,30,2,  3398,77));

  }

}
