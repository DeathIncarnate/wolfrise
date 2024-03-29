class BlackTurret : Actor
{
	Default
	{
		//$Category Enemies
		obituary "%o was spotted by a turret";
		health 100;
		radius 24;
		height 32;
		mass 9600;
		speed 0;
		dropitem "Explosion";
		Scale 1.28;
		painchance 255;
		deathsound "ROCKETEX";
		MONSTER;
		+NOINFIGHTING
		+NOBLOOD
		+NOBLOODDECALS
	}
  
	States
	{
		Spawn:
			TURR A 2 A_Look;
			loop;
		See:
			TURR AA 1 A_Chase("Missile", "Missile", CHF_DONTMOVE);
			loop;
		Missile:
			TURR D 18 A_FaceTarget;
			TURR B 2
			{
				A_SpawnProjectile("NaziBullet", 12, -1, 0);
				A_SpawnProjectile("NaziBullet", 12, 1, 0);
				A_PlaySound("weapons/turret/fire");
			}
			TURR D 2;
			TURR B 2
			{
				A_SpawnProjectile("NaziBullet", 12, -1, 0);
				A_SpawnProjectile("NaziBullet", 12, 1, 0);
				A_PlaySound("weapons/turret/fire");
			}
			TURR D 6 A_CPosRefire;
			Goto See;
		Pain:
			TNT1 A 0 A_PlaySound("weapons/venom/spindown");
			TNT1 A 0 A_Pain;
			TURR DEFGHIJK 1;
			TURR DEFGHIJK 1;
			TURR DEFGHIJK 2;
			TURR DEFGHIJK 2;
			Goto See;
		Death:
			TNT1 A 0 A_GiveInventory("WolfScore", 2500, AAPTR_PLAYER1);
			TNT1 A 0 A_NoBlocking;
			stop;
	}
}

class BlackTurret_Hard : BlackTurret
{
	Default
	{
		ReactionTime 2;
		Health 180;
	}
	
	States
	{
		Spawn:
			TURR A 2 A_Look;
			loop;
		See:
			TURR AA 1 A_Chase("Missile", "Missile", CHF_DONTMOVE);
			loop;
		Missile:
			TURR D 12 A_FaceTarget;
			TURR B 1
			{
				A_SpawnProjectile("NaziBullet", 12, -1, 0);
				A_SpawnProjectile("NaziBullet", 12, 1, 0);
				A_PlaySound("weapons/turret/fire");
			}
			TURR C 1
			{
				A_SpawnProjectile("NaziBullet", 12, -1, 8);
				A_SpawnProjectile("NaziBullet", 12, 1, -8);
				A_PlaySound("weapons/turret/fire");
			}
			TURR B 1
			{
				A_SpawnProjectile("NaziBullet", 12, -1, 16);
				A_SpawnProjectile("NaziBullet", 12, 1, -16);
				A_PlaySound("weapons/turret/fire");
			}
			TURR D 4 A_CPosRefire;
			Goto See;
		Pain:
			TNT1 A 0 A_PlaySound("weapons/venom/spindown");
			TNT1 A 0 A_Pain;
			TURR DEFGHIJK 1;
			TURR DEFGHIJK 1;
			TURR DEFGHIJK 2;
			TURR DEFGHIJK 2;
			Goto See;
		Death:
			TNT1 A 0 A_GiveToTarget("WolfScore", 750);
			TNT1 A 0 A_NoBlocking;
			stop;
	}
}