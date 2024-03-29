class SS1 : WolfGuard
{
	Default
	{
		//$Category Enemies
		obituary "%o was riddled by an SS.";
		Health 125;
		Radius 24;
		Height 96;
		Mass 300;
		Speed 20;
		dropitem "MP50";
		Painchance 192;
		Maxtargetrange 2048;
		MinMissileChance 1;
		DeathSound "enemies/ss/die";
		SeeSound "enemies/ss/see";
		PainSound "UBERPAIN";
		BloodType "BloodPuff2";
		Scale 1.76;
		ReactionTime 1;
		Monster;
		+DONTHARMSPECIES
		+NOINFIGHTING
		+MISSILEMORE
		+MISSILEEVENMORE
		+CANUSEWALLS
		+JUSTHIT
		+ALWAYSFAST
	}
  
	States
	{
	Spawn:
		ENFR A 10 A_Look;
		Loop;
	See:
		ENFR BBCCDDEE 3 A_Chase;
		Loop;
	Missile:
		ENFR L 18 A_FaceTarget;
		TNT1 A 0 A_Jump(144, "AltFiring");
	Firing:
		ENFR M 4;
		TNT1 A 0 A_PlaySound("weapons/mp50/fire");
		ENFR N 2 A_CustomBulletAttack(8,0,1,2);
		TNT1 A 0 A_CPosRefire;
		Goto Firing;
	AltFiring:
		ENFR L 18
		{
			A_PlaySound("weapons/warning");	
			A_SpawnProjectile("NaziLaserTarget", 64, 0, -2);
			A_SpawnProjectile("NaziLaserTarget", 64, 0, -1);
			A_SpawnProjectile("NaziLaserTarget", 64, 0, 0);
			A_SpawnProjectile("NaziLaserTarget", 64, 0, 1);
			A_SpawnProjectile("NaziLaserTarget", 64, 0, 2);
		}
		ENFR M 3
		{
			A_PlaySound("weapons/mp50/shotgun");
			A_SpawnProjectile("NaziBullet", 64, 0, -2);
			A_SpawnProjectile("NaziBullet", 64, 0, -1);
			A_SpawnProjectile("NaziBullet", 64, 0, 0);
			A_SpawnProjectile("NaziBullet", 64, 0, 1);
			A_SpawnProjectile("NaziBullet", 64, 0, 2);
		}
		Goto See;
	Pain:
		ENFR K 7 A_Pain;
		Goto See;
	Death:
		TNT1 A 0
		{
			A_GiveToTarget("WolfScore", 1500);
			A_Scream();
			A_NoBlocking();
		}
		ENFR F 4 A_SpawnDebris("BloodPuff2", false, random(0.75, 1.25), random(0.75, 1.25));
		ENFR GHI 4;
		ENFR J -1;
		Stop;
	Death.ExplosiveDamage:
		TNT1 A 0
		{
			A_GiveInventory("WolfScore", 1500, AAPTR_PLAYER1);
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

class SS1_Hard : SS1
{
	Default
	{
		Health 180;
		Speed 26;
		Painchance 75;
		ReactionTime 2;
		MaxTargetRange 4096;
	}

	States
	{
		Missile:
		ENFR L 18 A_FaceTarget;
		TNT1 A 0 A_Jump(192, "AltFiring");
	Firing:
		ENFR M 2;
		TNT1 A 0 A_PlaySound("weapons/mp50/fire");
		ENFR N 2 A_CustomBulletAttack(8,0,1,2);
		TNT1 A 0 A_CPosRefire;
		Goto Firing;
	AltFiring:
		ENFR L 18
		{
			A_PlaySound("weapons/warning");	
			A_SpawnProjectile("NaziLaserTarget", 64, 0, -2);
			A_SpawnProjectile("NaziLaserTarget", 64, 0, -1);
			A_SpawnProjectile("NaziLaserTarget", 64, 0, 0);
			A_SpawnProjectile("NaziLaserTarget", 64, 0, 1);
			A_SpawnProjectile("NaziLaserTarget", 64, 0, 2);
		}
		ENFR M 4
		{
			A_PlaySound("weapons/mp50/shotgun");
			A_SpawnProjectile("NaziBullet", 64, 0, -2);
			A_SpawnProjectile("NaziBullet", 64, 0, -1);
			A_SpawnProjectile("NaziBullet", 64, 0, 0);
			A_SpawnProjectile("NaziBullet", 64, 0, 1);
			A_SpawnProjectile("NaziBullet", 64, 0, 2);
		}
		ENFR N 4;
		ENFR M 4
		{
			A_PlaySound("weapons/mp50/shotgun");
			A_SpawnProjectile("NaziBullet", 64, 0, -2);
			A_SpawnProjectile("NaziBullet", 64, 0, -1);
			A_SpawnProjectile("NaziBullet", 64, 0, 0);
			A_SpawnProjectile("NaziBullet", 64, 0, 1);
			A_SpawnProjectile("NaziBullet", 64, 0, 2);
		}
		ENFR N 4;
		ENFR M 4
		{
			A_PlaySound("weapons/mp50/shotgun");
			A_SpawnProjectile("NaziBullet", 64, 0, -2);
			A_SpawnProjectile("NaziBullet", 64, 0, -1);
			A_SpawnProjectile("NaziBullet", 64, 0, 0);
			A_SpawnProjectile("NaziBullet", 64, 0, 1);
			A_SpawnProjectile("NaziBullet", 64, 0, 2);
		}
		Goto See;
	}
}

class ClassicSS : SS1
{
	Default
	{
		Scale 2.2;
	}
}