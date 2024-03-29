class Flameguard : Actor
{
	Default
	{
		//$Category Enemies
		ReactionTime 8;
		obituary "%o was roasted by a Flame Trooper";
		DamageFactor "Flame", 0.075;
		DamageFactor "KnifeDamage", 0.16;
		health 300;
		radius 28;
		height 104;
		mass 1000;
		speed 16;
		scale 1.76;
		MONSTER;
		+NOINFIGHTING
		+NORADIUSDMG
	}
	
	States
	{
		Spawn:
			FGRD A 8 A_Look;
			loop;
		See:
			FGRD AABBCCDD 4 A_Chase;
			loop;
		Missile:
			FGRD E 24 A_FaceTarget;
		Firing:
			FGRD E 1
			{
				A_PlaySound("weapons/flame/fire");
				A_SpawnProjectile("FlameBall", 48, 0, 0);
			}
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 1);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 2);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 3);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 4);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 5);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 6);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 7);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 8);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 7);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 6);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 5);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 4);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 3);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 2);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 1);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 0);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -1);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -2);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -3);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -4);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -5);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -6);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -7);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -8);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -7);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -6);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -5);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -4);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -3);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -2);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -1);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 0);
			Goto See;
		Death:
			TNT1 A 0 A_GiveInventory("WolfScore", 2000, AAPTR_PLAYER1);
			FGRD F 5 A_Scream;
			FGRD G 5 A_NoBlocking;
			FGRD H 5;
			FGRD I -1;
			stop;
	}
}

class FlameGuard_Hard : FlameGuard
{
	Default
	{
		ReactionTime 1;
		speed 24;
	}

	States
	{
		Missile:
			FGRD E 8 A_FaceTarget;
		Firing:
			FGRD E 1
			{
				A_PlaySound("weapons/flame/fire");
				A_SpawnProjectile("FlameBall", 48, 0, 0);
			}
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 1);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 2);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 3);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 4);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 5);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 6);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 7);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 8);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 9);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 10);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 11);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 12);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 13);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 14);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 15);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 16);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 15);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 14);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 13);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 12);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 11);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 10);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 9);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 8);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 7);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 6);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 5);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 4);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 3);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 2);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 1);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 0);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -1);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -2);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -3);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -4);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -5);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -6);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -7);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -8);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -9);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -10);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -11);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -12);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -13);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -14);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -15);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -16);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -15);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -14);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -13);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -12);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -11);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -10);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -9);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -8);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -7);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -6);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -5);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -4);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -3);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -2);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, -1);
			FGRD E 1 A_SpawnProjectile("FlameBall", 48, 0, 0);
			Goto See;
	}
}