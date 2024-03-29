class TransGrosse : Actor
{
	Default
	{
		//$Category Enemies
		obituary "%o was caught by the warden";
		Health 3500;
		Radius 48;
		Height 120;
		Mass 500;
		Speed 24;
		DamageFactor "KnifeDamage", 0.048;
		DamageFactor "ExplosiveDamage", 1.2;
		dropitem "GatlingGun";
		dropitem "GatlingGun";
		Maxtargetrange 2048;
		DeathSound "bosses/trans/death";
		SeeSound "bosses/trans/sight";
		BloodType "BloodPuff1";
		MinMissileChance 1;
		Scale 1.92;	// 1.6
		Monster;
		+BOSS
		+MISSILEMORE
		+MISSILEEVENMORE
		+CANUSEWALLS
	}
	
	States
	{
		Spawn:
			TRAN A 10 A_Look;
			Loop;
		See:
			TRAN BCD 3 A_Chase;
			Loop;
		Missile:
			TRAN E 22
			{
				A_FaceTarget();
				A_PlaySound("weapons/venom/spinup");
			}
		Firing: 
			TNT1 A 0 A_Jump(160, "SuperFiring");
			TRAN F 2
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(8, 0));
			}
			TRAN G 2
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-8, 0));
			}
			TRAN F 2
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(8, 0));
			}
			TRAN G 2
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-8, 0));
			}
			TRAN F 2
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(8, 0));
			}
			TRAN G 2
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-8, 0));
			}
			TRAN F 2
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(8, 0));
			}
			TRAN G 2
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-8, 0));
			}
			TRAN F 2
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(8, 0));
			}
			TRAN G 2
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-8, 0));
			}
			TRAN F 2
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(8, 0));
			}
			TRAN G 2
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-8, 0));
			}
			TRAN F 2
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(8, 0));
			}
			TRAN G 2
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-8, 0));
			}
			TRAN F 2
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(8, 0));
			}
			TRAN G 2
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-8, 0));
			}
			Goto See;
		SuperFiring:
			TRAN F 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(3, 0));
			}
			TRAN G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-3, 0));
			}
			TRAN F 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(3, 0));
			}
			TRAN G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-3, 0));
			}
			TRAN F 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(3, 0));
			}
			TRAN G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-3, 0));
			}
			TRAN F 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(3, 0));
			}
			TRAN G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-3, 0));
			}
			TRAN F 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(3, 0));
			}
			TRAN G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-3, 0));
			}
			TRAN F 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(3, 0));
			}
			TRAN G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-3, 0));
			}
			TRAN F 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(3, 0));
			}
			TRAN G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-3, 0));
			}
			TRAN F 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(3, 0));
			}
			TRAN G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-3, 0));
			}
			TRAN F 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(3, 0));
			}
			TRAN G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-3, 0));
			}
			TRAN F 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(3, 0));
			}
			TRAN G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-3, 0));
			}
			TRAN F 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(3, 0));
			}
			TRAN G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-3, 0));
			}
			TRAN F 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(3, 0));
			}
			TRAN G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-3, 0));
			}
			TRAN F 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(3, 0));
			}
			TRAN G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-3, 0));
			}
			TRAN F 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(3, 0));
			}
			TRAN G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-3, 0));
			}
			TRAN F 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(3, 0));
			}
			TRAN G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-3, 0));
			}
			TRAN F 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(3, 0));
			}
			TRAN G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-3, 0));
			}
			TRAN F 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(3, 0));
			}
			TRAN G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-3, 0));
			}
			TRAN F 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(3, 0));
			}
			TRAN G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-3, 0));
			}
			TRAN F 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -32, random(3, 0));
			}
			TRAN G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, 32, random(-3, 0));
			}
			Goto See;
		Death:
			TNT1 A 0 A_GiveInventory("WolfScore", 5000, AAPTR_PLAYER1);
			TRAN H 6 A_SpawnDebris("BloodPuff2", false, random(0.75, 1.25), random(0.75, 1.25));
			TRAN I 6 A_NoBlocking;
			TRAN J 6 A_Scream;
			TRAN K -1;
			Stop;
	}
}

class TransGrosse_Hard : TransGrosse
{
	Default
	{
		//$Category Enemies
		Health 5000;
		Speed 32;
		Maxtargetrange 4096;
	}
}