/**
 * Level One Layer
 */
class LevelOneMainLayer extends MarioLayer {

  LevelOneMainLayer(Level owner) {
    super(owner);
    addBackgroundSprite(new TilingSprite(new Sprite("graphics/backgrounds/background.gif"), 0, 0, width, height));
    addBoundary(new Boundary(-1, 0, -1, height));
    addBoundary(new Boundary(width+1, height, width+1, 0));

    addLava( -32, height-15, width, height); 
    addGrounds();

    addGroundPlatforms();

    addSkyBlocks();

    addSlants();

    addTriggers();

    // add some tubes
    addTubes();

    Koopa[] koopa = new Koopa[8];
    int placement = 450;
    for (int i = 0; i < 8; i++) {
      koopa[i] = new Koopa(placement, height - 120);
      addInteractor(koopa[i]);
      placement += 16;
    }

    addGoal(3680, height - 250);
  }

  // In order to effect "just-in-time" sprite placement,
  // we set up some trigger regions.
  void addTriggers() {
    // initial hidden mushroom
    addTrigger(new MushroomTrigger(100, 370, 5, 12, 190, 373.9, 4, 0));
  
    // Banzai Bill
    addTrigger(new BanzaiBillTrigger(150, 310, 5, 74, 400, height-95, -6, 0));
    
    //Bullet Bill
    for (int i = 0; i < 20; i++) {
      addTrigger(new BulletBillTrigger(1000, 0, 5, height, ((float)Math.random() * 500), 0, 0, 2+(float)(Math.random() * 6)));
    }
    
    addTrigger(new BulletBillTrigger(1500, 0, 5, height, 40, 0, 0, 15));
    addTrigger(new BulletBillTrigger(1600, 0, 5, height, 40, 0, 0, 15));
    addTrigger(new BulletBillTrigger(1660, 0, 5, height, 40, 0, 0, 20));
    addTrigger(new BulletBillTrigger(1900, 0, 5, height, 30, 0, 0, 20));
    //Rex
    for (int i = 0; i < 15; i++) {
      addTrigger(new RexTrigger(2400, 0, 5, height, 100 + ((float)Math.random() * 300), height-64, -0.2, 0));
    }
    
    
    
  }

  void addGroundPlatforms() {
    // add some cave platforms    
    addGroundPlatform("ground", 305, height-96, 255, 34);

    addGroundPlatform("ground", 700, height-112, 120, 300);

    addGroundPlatform("ground", 1945, height-80, 65, 300);

    addGroundPlatform("ground", 2040, height-97, 50, 300);

    addGroundPlatform("ground", 2120, height-113, 224, 300);

    addGroundPlatform("ground", 3392, height-98, 50, 300);

    addGroundPlatform("ground", 3475, height-150, 50, 300);

    addGroundPlatform("ground", 3570, height-202, 50, 300);

    addGroundPlatform("ground", 3670, height-250, 50, 300);
  }

  // some tubes for transport
  void addTubes() {

    addTube(2850, height-48, new LevelTeleportTrigger("Level One Dark Level", 2020+6, height-65, 16, 1, 16, height-32));

    addUpsideDownTube(3392, 28);


  }

  void addGrounds() {
    addGround("ground", -32, height-48, 550, height); 

    addGround("ground", 950, height-48, 1500, height);

    addGround("ground", 2442, height-48, 2719, height); 

    addGround("ground", 2850, height-48, 2870, height);
  }

  void addSkyBlocks() {

    for (int i=0; i<3; i++) {
      addBoundedInteractor(new SkyBlock(616+i*16, height-105));
    }

    for (int i=0; i<3; i++) {
      addBoundedInteractor(new SkyBlock(1530+i*16, height-90));
    }

    for (int i=0; i<3; i++) {
      addBoundedInteractor(new SkyBlock(1598+i*16, height-110));
    }

    for (int i=0; i<3; i++) {
      addBoundedInteractor(new SkyBlock(1666+i*16, height-130));
    }

    for (int i=0; i<3; i++) {
      addBoundedInteractor(new SkyBlock(1734+i*16, height-90));
    }

    for (int i=0; i<3; i++) {
      addBoundedInteractor(new SkyBlock(1802+i*16, height-110));
    }

    for (int i=0; i<3; i++) {
      addBoundedInteractor(new SkyBlock(1880+i*16, height-130));
    }

    for (int i=0; i<3; i++) {
      addBoundedInteractor(new SkyBlock(2700+i*16, height-110));
    }

    for (int i=0; i<3; i++) {
      addBoundedInteractor(new SkyBlock(2768+i*16, height-130));
    }

    for (int i=0; i<35; i++) {
      addBoundedInteractor(new SkyBlock(width-29*16+i*16, 20));
    }
  }

  void addSlants() {
    addSlant(900, height-48);

    addSlant(2400, height-48);

    addSlant(2490, height-48);

    addSlant(2580, height-48);
  }
}
