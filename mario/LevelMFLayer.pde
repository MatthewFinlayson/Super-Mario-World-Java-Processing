
class LevelMFLayer extends MarioLayer {

  LevelMFLayer(Level owner) {
    super(owner);
    addBackgroundSprite(new TilingSprite(new Sprite("graphics/backgrounds/bonus.gif"), 0, 0, width, height));

    addBoundary(new Boundary(-1, 0, -1, height));
    addBoundary(new Boundary(width+1, height, width+1, 0));

    float gap = 10;
    
    addGround("ground", -2, height-48, -32 + gap*32, height);
    addBoundary(new Boundary(-32 + gap*32, height-47, -32 + gap*32, height));
    gap += 2.5;
    addBoundary(new Boundary(-31 + gap*32, height, -31 + gap*32, height-47));
    addGround("ground", -31 + gap*32, height-48, width+32, height);
    
    
    addBushes();
    
    addGoal(2000,height-50);
    
    addSlant(500, height-48);
    addSlant(550, height-48);
    addSlant(600, height-48);
    addSlant(1730, height-48);
    addSlant(1780, height-48);


    addGroundPlatform("ground", 912, height-128, 128, 80);
    addCoins(912, height-140, 128);
    addGroundPlatform("ground", 976, height-96, 128, 48);
    addGroundPlatform("ground", 1442, height-128, 128, 80);
    addCoins(1442, height-140, 128);
    addGroundPlatform("ground", 1442+64, height-96, 128, 48);
    addGroundPlatform("ground", 1855, height-160, 128, 100);

    for (int i=0; i<10; i++) {
      addBoundedInteractor(new CoinBlock(1158+i*16, height-128));
    }

    // mystery coins
    addForPlayerOnly(new DragonCoin(550, height-164));

    FlyingKoopa koopa = new FlyingKoopa(264, height-178);
    FlyingKoopa koopa2 = new FlyingKoopa(230, height-178);
    
    FlyingKoopa koopa3 = new FlyingKoopa(2500, height-178);
    FlyingKoopa koopa4 = new FlyingKoopa(2010, height-178);
    
    
    addInteractor(koopa);
    addInteractor(koopa2);
    addInteractor(koopa3);
    addInteractor(koopa4);
   
    addTriggers();
    addTubes();

  }

  // In order to effect "just-in-time" sprite placement,
  // we set up some trigger regions.
  void addTriggers() {
    // initial hidden mushroom
    addTrigger(new MushroomTrigger(20, 370, 5, 12, 70, 373.9, 2, 0));
    // koopas
    addTrigger(new FlyingKoopaTrigger(412, 0, 5, height, 350, height-64, -0.2, 0));
    addTrigger(new FlyingKoopaTrigger(562, 0, 5, height, 350, height-64, -0.2, 0));
    addTrigger(new FlyingKoopaTrigger(916, 0, 5, height, 350, height-64, -0.2, 0));
    addTrigger(new FlyingKoopaTrigger(1000, 0, 5, height, 350, height-64, -0.2, 0));
    // when tripped, release a banzai bill!
    addTrigger(new BanzaiBillTrigger(500, 310, 5, 74, 400, height-160, -6, 0));
    addTrigger(new BanzaiBillTrigger(450, 310, 5, 74, 400, height-120, -6, 0));
    addTrigger(new BanzaiBillTrigger(1000, 310, 5, 74, 400, height-95, -6, 0));
    addTrigger(new BanzaiBillTrigger(1100, 310, 5, 74, 400, height-95, -6, 0));
    addTrigger(new BanzaiBillTrigger(1700, 310, 5, 74, 400, height-95, -6, 0));
  }

  // some tubes for transport
  void addTubes() {
   
    addTube(804, height-48, null);
    addTube(380, height-48, null);

  }
}
