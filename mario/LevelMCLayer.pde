class LevelMCLayer extends MarioLayer {

  LevelMCLayer(Level owner) {
    super(owner);
    addBackgroundSprite(new TilingSprite(new Sprite("graphics/backgrounds/bonus.gif"), 0, 0, width, height));

    addBoundary(new Boundary(-1, 0, -1, height));
    addBoundary(new Boundary(width+1, height, width+1, 0));

    float gap = 10;
    
    /*addGround("ground", -2, height-48, -32 + gap*32, height);
    //addBoundary(new Boundary(-32 + gap*32, height-47, -32 + gap*32, height));
    //gap += 2.5;
    //addBoundary(new Boundary(-31 + gap*32, height, -31 + gap*32, height-47));
    addGround("ground", -31 + gap*32, height-48, width+32, height);*/
     
    
    addBushes();
    
    addGoal(1900,height-280);
    
    addSlant(300, height-48);
    addSlant(350, height-48);
    
    addGroundPlatform("ground",450, height-160, 40, 10);
    addGroundPlatform("ground",530, height-200, 40, 10);
    addGroundPlatform("ground",450, height-240, 40, 10);
    addGroundPlatform("ground",530, height-280, 40, 10);
    addGroundPlatform("ground",450, height-320, 40, 10);
    addGroundPlatform("ground",530, height-360, 40, 10);
    addGroundPlatform("cave", 250, height-400, 220,10);
    
    
    
    addCoins(500,height-60, 100);
    
    addSlant(600, height-48);
    addSlant(650, height-48);
   
    /*addSlant(1500, height-48);
    addSlant(1550, height-48);*/


    addGroundPlatform("ground", 100, height-128, 128, 80);
    addCoins(100, height-140, 128);
    addGroundPlatform("ground", 150, height-96, 128, 48);
    
    
    addGroundPlatform("ground", 900, height-160, 140,100);
    addCoins(900,height-172, 140);
    addGroundPlatform("ground", 800, height-128, 128, 80);
    addCoins(800, height-140, 128);
    addGroundPlatform("ground", 850, height-96, 128, 48);
    
    
    addGroundPlatform("ground", 1300, height-160, 140,100);
    
    
    
    addGroundPlatform("cave", 1500, height-180, 40, 10);
    addGroundPlatform("cave", 1580, height-200, 40, 10);
    addGroundPlatform("cave", 1500, height-240, 40, 10);
    addGroundPlatform("cave", 1580, height-260, 40, 10);
    addGroundPlatform("cave", 1650, height-280, 300, 280-50);
    
    
    

    for (int i=0; i<10; i++) {
      addBoundedInteractor(new CoinBlock(1100+i*16, height-128));
    }
    
    addInteractor(new Muncher(1500, height-55));
    addInteractor(new Muncher(1520, height-55));
    addInteractor(new Muncher(1540, height-55));
    addInteractor(new Muncher(1560, height-55));
    addInteractor(new Muncher(1580, height-55));
    addInteractor(new Muncher(1600, height-55));
    addInteractor(new Muncher(1620, height-55));
    
    
    // mystery coins
    addForPlayerOnly(new DragonCoin(305, height-415));
    addForPlayerOnly(new DragonCoin(360, height-415));
    addForPlayerOnly(new DragonCoin(415, height-415));
    addForPlayerOnly(new DragonCoin(1370, height-172));
    
    
    /*FlyingKoopa koopa = new FlyingKoopa(164, height-148);
    FlyingKoopa koopa2 = new FlyingKoopa(214, height-116);
    
    FlyingKoopa koopa3 = new FlyingKoopa(400, height-64);
    FlyingKoopa koopa4 = new FlyingKoopa(600, height-64);
    FlyingKoopa koopa5 = new FlyingKoopa(800, height-64);
    FlyingKoopa koopa6 = new FlyingKoopa(1000, height-64);
    FlyingKoopa koopa7 = new FlyingKoopa(1200, height-64);
    FlyingKoopa koopa8 = new FlyingKoopa(1400, height-64);
    
    
    addInteractor(koopa);
    addInteractor(koopa2);
    addInteractor(koopa3);
    addInteractor(koopa4);
    addInteractor(koopa5);
    addInteractor(koopa6);
    addInteractor(koopa7);
    addInteractor(koopa8);*/
   
    addTriggers();
    addTubes();
    
     addGround("ground", -2, height-48, -32 + gap*32, height);
    //addBoundary(new Boundary(-32 + gap*32, height-47, -32 + gap*32, height));
    //gap += 2.5;
    //addBoundary(new Boundary(-31 + gap*32, height, -31 + gap*32, height-47));
    addGround("ground", -31 + gap*32, height-48, width+32, height);



    
  }

  // In order to effect "just-in-time" sprite placement,
  // we set up some trigger regions.
  void addTriggers() {
    // initial hidden mushroom
    addTrigger(new MushroomTrigger(20, height-100, 5, 12, 200, 373.9, 2, 0));
    
    // koopas
    addTrigger(new FlyingKoopaTrigger(300, 0, 5, height, 50, height-64, 0.2, 0));
    
    addTrigger(new FlyingKoopaTrigger(750, 0, 5, height, 114, height-150, -0.2, 0));
    addTrigger(new FlyingKoopaTrigger(750, 0, 5, height, 164, height-130, -0.2, 0));
    addTrigger(new FlyingKoopaTrigger(750, 0, 5, height, 220, height-190, -0.2, 0));
    
    
    addTrigger(new FlyingKoopaTrigger(470, 0, 5, 50, -50, height-420, -0.2, 0));
    
    addTrigger(new FlyingKoopaTrigger(1650, 0, 5, 200, 125, height-300, 0.2, 0));
    addTrigger(new FlyingKoopaTrigger(1650, 0, 5, 200, 175, height-300, 0.2, 0));
    
    addTrigger(new BanzaiBillTrigger(470, height-180, 5, 50, 400, height-160, -6, 0));
    addTrigger(new BanzaiBillTrigger(470, height-260, 5, 50, 400, height-240, -6, 0));
    addTrigger(new BanzaiBillTrigger(470, height-340, 5, 50, 400, height-320, -6, 0));
    addTrigger(new BanzaiBillTrigger(550, height-220, 5, 50, 400, height-200, -6, 0));
    addTrigger(new BanzaiBillTrigger(550, height-300, 5, 50, 400, height-280, -6, 0));
    addTrigger(new BanzaiBillTrigger(550, height-420, 5, 50, 400, height-400, -6, 0));
    
    
    //when tripped, release a banzai bill!
    addTrigger(new BanzaiBillTrigger(470, 0, 5, 50, 400, height-400, -6, 0));
    addTrigger(new BanzaiBillTrigger(1370, 0, 5, 300, 200, height-172, -6, 0));
    addTrigger(new BanzaiBillTrigger(1650, 0, 5, 150, 400, height-300, -6, 0));
    
  }

  // some tubes for transport
  void addTubes() {
   
    addTube(10, height-48, null);
    addTube(width-32, height-32, new LevelTeleportTrigger("Dark Level",  width-30,height-34,30,2,  804+16,373));
    
    //addTube(380, height-48, null);

  }
}
