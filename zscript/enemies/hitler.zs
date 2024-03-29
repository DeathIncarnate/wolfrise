class MechaHitler : Actor
{
	Default
	{
  //$Category Bosses
  ReactionTime 2;
  obituary "%o could not withstand the Fuhrer's Iron Fist.";
  health 333000;
  radius 80;
  height 160;
  mass 2500;
  speed 24;
  Scale 2.4;
  painchance 0;
  dropitem "Hitler";
  seesound "MECHASEE";
  deathsound "MECHSHIT";
  MONSTER;
  +BOSS
  +NOINFIGHTING
  +NOBLOOD
  +NOBLOODDECALS
  }
  
  states
  {
  Spawn:
    MECH A 2 A_Look;
    loop;
  See:
	MECH AA 3 A_Chase;
	TNT1 A 0 A_PlaySound("MECHSTEP");
	MECH BB 3 A_Chase;
	MECH CC 3 A_Chase;
	TNT1 A 0 A_PlaySound("MECHSTEP");
	MECH DD 3;
    loop;
  Missile:
	TNT1 A 0 A_PlaySound("SPINUP");
    MECH E 20 A_FaceTarget;
  Firing:
	TNT1 A 0 bright A_SpawnProjectile("NaziBullet", 52, -32, random(8, 0));
	MECH F 2 A_PlayWeaponSound("MGUN1");
	TNT1 A 0 bright A_SpawnProjectile("NaziBullet", 52, -32, random(8, 0));
	MECH G 2 A_PlayWeaponSound("MGUN1");
	TNT1 A 0 bright A_SpawnProjectile("NaziBullet", 52, -32, random(8, 0));
	MECH F 2 A_PlayWeaponSound("MGUN1");
	TNT1 A 0 bright A_SpawnProjectile("NaziBullet", 52, -32, random(8, 0));
	MECH G 2 A_PlayWeaponSound("MGUN1");
	MECH E 1 A_CPosRefire;
    Goto Firing;
  Death:
	TNT1 A 0 A_GiveToTarget("WolfScore", 5000);
	MECH H 4 A_Scream;
    MECH I 4 A_NoBlocking;
    MECH J 4;
    MECH K -1;
    stop;
  }
}

class Hitler : Actor
{
	default
	{
//$Category Bosses
  ReactionTime 2;
  obituary "%o's splattered corpse bows before the Fuhrer.";
  health 66666;
  radius 32;
  height 72;
  mass 2500;
  BloodType "BloodPuff1";
  speed 28;
  Scale 1.76;
  painchance 0;
  MONSTER;
  +BOSS
  +NOINFIGHTING
  }
  
  states
  {
  Spawn:
    HITL A 2 A_Look;
    loop;
  See:
	HITL AABBCCDD 4 A_Chase;
    loop;
  Missile:
	TNT1 A 0 A_PlaySound("SPINUP");
    HITL E 20 A_FaceTarget;
  Firing:
	TNT1 A 0 bright A_SpawnProjectile("NaziBullet", 52, -32, random(8, 0));
	HITL F 2 A_PlayWeaponSound("MGUN1");
	TNT1 A 0 bright A_SpawnProjectile("NaziBullet", 52, -32, random(8, 0));
	HITL G 2 A_PlayWeaponSound("MGUN1");
	TNT1 A 0 bright A_SpawnProjectile("NaziBullet", 52, -32, random(8, 0));
	HITL F 2 A_PlayWeaponSound("MGUN1");
	TNT1 A 0 bright A_SpawnProjectile("NaziBullet", 52, -32, random(8, 0));
	HITL G 2 A_PlayWeaponSound("MGUN1");
	HITL E 1 A_CPosRefire;
    Goto Firing;
  Death:
	TNT1 A 0
	{
		 A_NoBlocking();
		 A_Scream();
	}
	HITL A 80 A_PlaySound("HITLDETH");
	TNT1 A 0 A_GiveToTarget("WolfScore", 5000);
	TNT1 A 0 A_PlaySound("HITLGIBD");
	HITL H 3;
    HITL I 3;
    HITL J 3
	{
		A_PlaySound("HITLGIB2");
		A_SpawnDebris("BloodPuff1", 0, random(0.2, 0.8), random(0.2, 0.8));
	}
	HITL K 3 A_SpawnDebris("BloodPuff1", 0, random(0.2, 0.8), random(0.2, 0.8));
	HITL L 3
	{
		A_PlaySound("HITLGIB3");
		A_SpawnDebris("BloodPuff1", 0, random(0.2, 0.8), random(0.2, 0.8));
	}
	HITL MN 3 A_SpawnDebris("BloodPuff1", 0, random(0.2, 0.8), random(0.2, 0.8));
	TNT1 A 0
	{
		A_PlaySound("HITLGIB4");
		A_SpawnDebris("BloodPuff1", 0, random(0.2, 0.8), random(0.2, 0.8));
	}
    HITL O -1;
    stop;
  }
}

class FakeHitler : Actor
{
	default
	{
		//$Category Bosses
		ReactionTime 8;
		obituary "%o's was spooked by a Hitler ghost.";
		health 500;
		radius 48;
		height 100;
		mass 100;
		BloodType "BloodPuff1";
		speed 20;
		Scale 1.8;
		painchance 0;
		SeeSound "TOTHUND1";
		DeathSound "HAHAHAHA";
		DropItem "BJSphere";
		MONSTER;
		Maxtargetrange 102400;
		+FLOAT
		+NOGRAVITY
		+NOINFIGHTING
		+MISSILEMORE
		+MISSILEEVENMORE
	}
	
	states
	{
		Spawn:
			FAKE ABCB 4 A_Look;
			loop;
		See:
			FAKE ABCB 4 A_Chase;
			loop;
		Missile:
			FAKE A 20 A_FaceTarget;
			FAKE I 5 A_CustomMissile("ElectroboltRed",48,0,random(-5,0));
			TNT1 A 0 A_CustomMissile("ElectroboltRed",48,0,0);
			FAKE A 8 A_FaceTarget;
			FAKE I 5 A_CustomMissile("ElectroboltRed",48,0,0);
			TNT1 A 0 A_CustomMissile("ElectroboltRed",48,0,random(0,5));
			FAKE A 5 A_FaceTarget;
			FAKE I 5 A_CustomMissile("ElectroboltRed",48,0,random(-5,0));
			TNT1 A 0 A_CustomMissile("ElectroboltRed",48,0,0);
			FAKE A 8 A_FaceTarget;
			FAKE I 5 A_CustomMissile("ElectroboltRed",48,0,0);
			TNT1 A 0 A_CustomMissile("ElectroboltRed",48,0,random(0,5));
			Goto See;
		Death:
			TNT1 A 0 A_Scream;
			TNT1 A 0 A_NoBlocking;
			FAKE JKLMN 4;
			FAKE O -1;
			Stop;
  }
}