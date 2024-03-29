class Officer : WolfGuard
{
	Default
	{
		//$Category Enemies
		obituary "%o was hunted by an officer";
		Health 80;
		Radius 21;
		Height 88;
		Mass 300;
		Speed 16;
		dropitem "SmallAmmo";
		Painchance 96;
		Maxtargetrange 2048;
		MinMissileChance 2;
		BloodType "BloodPuff1";
		DeathSound "enemies/death2";
		SeeSound "enemies/halt";
		PainSound "UBERPAIN";
		BloodType "BloodPuff1";
		Scale 1.6;
		Monster;
		+MISSILEMORE
		+MISSILEEVENMORE
	}
	
	States
	{
		Spawn:
			OFF1 A 2 A_Look;
			Loop;
		See:
			OFF1 BCDE 3 A_Chase;
			Loop;
		Missile:
			OFF1 F 2 A_FaceTarget;
			OFF1 G 12;
		Firing:
			OFF1 H 2
			{
				A_PlaySound("weapons/luger/softfire");
				A_CustomBulletAttack(0,0,1,2);
			}
			OFF1 G 1;
			OFF1 H 2
			{
				A_PlaySound("weapons/luger/softfire");
				A_CustomBulletAttack(0,0,1,2);
			}
			OFF1 G 1;
			OFF1 H 2
			{
				A_PlaySound("weapons/luger/softfire");
				A_CustomBulletAttack(0,0,1,2);
			}
			OFF1 G 10 A_CPosRefire();
			Goto Firing;
		Pain:
			OFF1 R 7 A_Pain;
			Goto See;
		Death:
			TNT1 A 0
			{
				A_GiveInventory("WolfScore", 1750, AAPTR_PLAYER1);
				A_Scream();
				A_NoBlocking();
				A_SpawnDebris("BloodPuff2", false, random(0.75, 1.25), random(0.75, 1.25));
			}
			OFF1 IJKLMOP 3;
			OFF1 Q -1;
			Stop;
		Death.ExplosiveDamage:
			TNT1 A 0
			{
				A_GiveInventory("WolfScore", 1750, AAPTR_PLAYER1);
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

class Officer_Hard : Officer
{
	Default
	{
		Health 110;
		Speed 24;
		PainChance 64;
	}
}