class SS2 : WolfGuard
{
	Default
	{
		//$Category Enemies
		obituary "%o was riddled by an SS.";
		Health 200;
		Radius 24;
		Height 88;
		Mass 300;
		Speed 20;
		dropitem "MP50";
		Painchance 96;
		Maxtargetrange 2048;
		DeathSound "enemies/death3";
		SeeSound "enemies/halt";
		PainSound "UBERPAIN";
		BloodType "BloodPuff2";
		Scale 1.76;
		ReactionTime 4;
		Monster;
		+DONTHARMSPECIES
		+NOINFIGHTING
		+MISSILEMORE
		+MISSILEEVENMORE
		+CANUSEWALLS
	}
  
	States
	{
	Spawn:
		WBLU A 10 A_Look;
		Loop;
	See:
		WBLU BBCCDDEE 3 A_Chase;
		Loop;
	Missile:
		WBLU G 18 A_FaceTarget;
		TNT1 A 0 A_Jump(144, "AltFiring");
	Firing:
		WBLU H 4;
		TNT1 A 0 A_PlaySound("weapons/mp50/fire");
		WBLU I 2 A_CustomBulletAttack(8,0,1,2);
		TNT1 A 0 A_CPosRefire;
		Goto Firing;
	AltFiring:
		WBLU H 14
		{
			A_PlaySound("weapons/warning");	
			A_SpawnProjectile("NaziLaserTarget", 48, 0, -2);
			A_SpawnProjectile("NaziLaserTarget", 48, 0, -1);
			A_SpawnProjectile("NaziLaserTarget", 48, 0, 0);
			A_SpawnProjectile("NaziLaserTarget", 48, 0, 1);
			A_SpawnProjectile("NaziLaserTarget", 48, 0, 2);
		}
		WBLU I 2
		{
			A_PlaySound("weapons/mp50/shotgun");
			A_SpawnProjectile("NaziBullet", 48, 0, -2);
			A_SpawnProjectile("NaziBullet", 48, 0, -1);
			A_SpawnProjectile("NaziBullet", 48, 0, 0);
			A_SpawnProjectile("NaziBullet", 48, 0, 1);
			A_SpawnProjectile("NaziBullet", 48, 0, 2);
		}
		Goto See;
	Pain:
		WBLU F 7 A_Pain;
		Goto See;
	Death:
		TNT1 A 0
		{
			A_GiveToTarget("WolfScore", 1500);
			A_Scream();
			A_NoBlocking();
		}
		WBLU J 4 A_SpawnDebris("BloodPuff2", false, random(0.75, 1.25), random(0.75, 1.25));
		WBLU KLM 4;
		WBLU N -1;
		Stop;
	Death.ExplosiveDamage:
		TNT1 A 0
		{
			A_GiveToTarget("WolfScore", 1500);
			A_Scream();
			A_NoBlocking();
			A_SpawnDebris("BloodPuff3", false, random(1.5, 2.0), random(1.5, 2.0));
			A_SpawnDebris("BoneDebris", false, random(0.25, 0.5), random(0.25, 0.5));
			A_SpawnDebris("BoneDebris2", false, random(0.75, 1.25), random(0.75, 1.25));
			A_SpawnDebris("BoneDebris3", false, random(2.0, 4.0), random(2.0, 4.0));
			A_SpawnDebris("BoneDebris4", false, random(1.0, 2.0), random(1.0, 2.0));
			A_PlaySound("enemies/gibbed");
		}
		Stop;
	}
}

class SS2_Hard : SS2
{
	Default
	{
		Speed 30;
		Painchance 75;
		ReactionTime 2;
		MaxTargetRange 8192;
	}
}