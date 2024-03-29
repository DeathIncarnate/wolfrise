class LoperBoss : Actor
{
	action void A_LoperAttack2()
	{
		A_PlaySound("enemies/loper/zap3");
		A_SpawnProjectile("Zap2", 32, 0, 0);
	}
	
	action void A_LoperAttack()
	{
		A_PlaySound("enemies/loper/zap2");
		A_SpawnProjectile("Zap", 32, 0, 0);
		A_SpawnProjectile("Zap", 32, 0, 10);
		A_SpawnProjectile("Zap", 32, 0, 20);
		A_SpawnProjectile("Zap", 32, 0, 30);
		A_SpawnProjectile("Zap", 32, 0, 40);
		A_SpawnProjectile("Zap", 32, 0, 50);
		A_SpawnProjectile("Zap", 32, 0, 60);
		A_SpawnProjectile("Zap", 32, 0, 70);
		A_SpawnProjectile("Zap", 32, 0, 80);
		A_SpawnProjectile("Zap", 32, 0, 90);
		A_SpawnProjectile("Zap", 32, 0, 100);
		A_SpawnProjectile("Zap", 32, 0, 110);
		A_SpawnProjectile("Zap", 32, 0, 120);
		A_SpawnProjectile("Zap", 32, 0, 130);
		A_SpawnProjectile("Zap", 32, 0, 140);
		A_SpawnProjectile("Zap", 32, 0, 150);
		A_SpawnProjectile("Zap", 32, 0, 160);
		A_SpawnProjectile("Zap", 32, 0, 170);
		A_SpawnProjectile("Zap", 32, 0, 180);
		A_SpawnProjectile("Zap", 32, 0, 190);
		A_SpawnProjectile("Zap", 32, 0, 200);
		A_SpawnProjectile("Zap", 32, 0, 210);
		A_SpawnProjectile("Zap", 32, 0, 220);
		A_SpawnProjectile("Zap", 32, 0, 230);
		A_SpawnProjectile("Zap", 32, 0, 240);
		A_SpawnProjectile("Zap", 32, 0, 250);
		A_SpawnProjectile("Zap", 32, 0, 260);
		A_SpawnProjectile("Zap", 32, 0, 270);
		A_SpawnProjectile("Zap", 32, 0, 280);
		A_SpawnProjectile("Zap", 32, 0, 290);
		A_SpawnProjectile("Zap", 32, 0, 300);
		A_SpawnProjectile("Zap", 32, 0, 310);
		A_SpawnProjectile("Zap", 32, 0, 320);
		A_SpawnProjectile("Zap", 32, 0, 330);
		A_SpawnProjectile("Zap", 32, 0, 340);
		A_SpawnProjectile("Zap", 32, 0, 350);
	}
	
	Default
	{
		//$Category Enemies
		ReactionTime 1;
		obituary "%o was frightened by a loper";
		radius 40;
		height 72;
		Health 3000;
		mass 5000;
		painchance 0;
		Speed 24;
		Scale 1.64;
		MinMissileChance 1;
		Maxtargetrange 2048;
		DamageFactor "KnifeDamage", 0.08;
		seesound "enemies/loper/see";
		deathsound "enemies/loper/death";
		MONSTER;
		+BOSS
		+NOINFIGHTING
		+DONTHARMSPECIES
		+MISSILEMORE
		+MISSILEEVENMORE
		-CANUSEWALLS
	}
	
	States
	{
		Spawn:
			LOPR A 2 A_Look;
			Loop;
		See:
			LOPR AABB 3 A_Chase;
			Loop;
		Missile:
			LOPR A 1 A_FaceTarget;
			TNT1 A 0 A_Jump(136, "Attack2");
			TNT1 A 0 A_Jump(176, "Attack1");
		Attack1:
			LOPR JCDEFGHIJKLMNO 1;
			LOPR P 1 A_LoperAttack();
			LOPR A 1 A_FaceTarget;
			LOPR JCDEFGHIJKLMNO 1;
			LOPR P 1 A_LoperAttack();
			Goto See;
		Attack2:
			LOPR JCDEFGHIJKLMNO 1;
			LOPR P 1 A_LoperAttack2();
			LOPR A 1 A_FaceTarget;
			LOPR JCDEFGHIJKLMNO 1;
			LOPR P 1 A_LoperAttack2();
			Goto See;
		Death:
			TNT1 A 0 A_GiveInventory("WolfScore", 5000, AAPTR_PLAYER1);
			LOPR Q 6;
			LOPR R 6 A_Scream;
			LOPR S 6 A_NoBlocking;
			LOPR T -1;
			Stop;
	}
}