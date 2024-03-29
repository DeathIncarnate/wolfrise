//Place the RainDropSpawner on your map, and use values set on the specials tab to modify it

//The first argument controls it's area. 128, for example makes it a 256x256 square or 256-radius circle (See fourth argument)
//The second argument controls it's frequency. The lower the number, the heavier the rainfall
//The third argument controls whether or not it plays it's ambient sound. 0 will play the sound, 1 will not
//The fourth argument controls the area type. 0 is a square, 1 is a circle


class RainSpawner : Actor
{
  Default
  {
  Radius 1;
  Height 1;
  +NoClip
  +ClientSideOnly
  +SpawnCeiling
  +NoGravity
  }
  
  States
  {
  Spawn:
    TNT1 A 0;
    TNT1 A 0 A_JumpIf(Args[2] > 0, "NoSound");
    TNT1 A 0 A_JumpIf(Args[3] > 0, "Circle");
    TNT1 A 0 A_PlaySoundEx("Ambient/Rain", "SoundSlot7", 1);
    TNT1 A 1 A_SpawnItemEx("RainDrop", Random(-Args[0], Args[0]), Random(-Args[0], Args[0]), -2, 0, 0, 0, 0, 128, Args[1]);
    Loop;
  Circle:
    TNT1 A 1 A_SpawnItemEx("RainDrop", Random(-Args[0], Args[0]), 0, -2, 0, 0, 0, Random(0, 360), 128, Args[1]);
  NoSound:
    TNT1 A 0 A_Jumpif(Args[3] > 0, "NoSoundCircle");
    TNT1 A 1 A_SpawnItemEx("RainDrop", Random(-Args[0], Args[0]), Random(-Args[0], Args[0]), -2, 0, 0, 0, 0, 128, Args[1]);
    Loop;
  NoSoundCircle:
    TNT1 A 1 A_SpawnItemEx("RainDrop", Random(-Args[0], Args[0]), 0, -2, 0, 0, 0, Random(0, 360), 128, Args[1]);
    Loop;
  }
}

class RainDrop : Actor
{
  Default
  {
  Height 2;
  Radius 2;
  Renderstyle "Add";
  Alpha 0.99;
  Scale 3.2;
  +Missile
  +NoBlockMap
  -NoGravity
  }
  
  States
  {
  Spawn:
    RNDR A 1 BRIGHT A_JumpIf(WaterLevel > 0, "Death");
    Loop;
  Death:
	TNT1 A 0 A_SetScale(0.88, 0.88);
    RNDR BCDEFGH 3 BRIGHT A_FadeOut(0.15);
    Stop;
  }
}
