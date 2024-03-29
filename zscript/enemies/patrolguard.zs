class PatrolGuard : WolfGuard
{
	Default
	{
		//$Category Enemies
		obituary "%o was shot by a Patrol Guard.";
		Health 40;
		Radius 21;
		Height 80;
		Mass 300;
		Speed 12;
		dropitem "SmallAmmo";
		Painchance 180;
		Maxtargetrange 2048;
		MinMissileChance 2;
		DeathSound "enemies/guard/die";
		SeeSound "enemies/guard/see";
		PainSound "UBERPAIN";
		BloodType "BloodPuff1";
		Scale 1.76;
		Monster;
		+MISSILEMORE
		+MISSILEEVENMORE
	}
	
	States
	{
		Spawn:
			WHIT A 2 A_Look;
			Loop;
		See:
			WHIT BCDE 4 A_Chase;
			Loop;
		Missile:
			WHIT F 16 A_FaceTarget;
			WHIT G 4;
			TNT1 A 0 A_PlaySound("weapons/luger/fire");
			WHIT H 4 A_CustomBulletAttack(8,0,1,4);
			Goto See;
		Pain:
			WHIT U 10 
			{
				A_Pain();
			}
			Goto See;
		Death:
			WHIT U 4
			{
				A_GiveInventory("WolfScore", 1000, AAPTR_PLAYER1);
				A_Scream();
				A_NoBlocking();
			}
			WHIT V 4 A_SpawnDebris("BloodPuff2", false, random(0.75, 1.25), random(0.75, 1.25));
			WHIT WXY 4;
			WHIT Z -1;
			Stop;
// 		Death.Flame:
// 			TNT1 A 0
// 			{
// 				A_NoBlocking();
// 			}
// 			BURN ABCDEFGHIJKLMNOPQSTU 4;
// 			BURN V -1;
// 			Stop;
		Death.ExplosiveDamage:
			TNT1 A 0
			{
				A_GiveInventory("WolfScore", 1000, AAPTR_PLAYER1);
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

class PatrolGuard_Hard : PatrolGuard
{
	Default
	{
		Health 60;
		Speed 18;
		Painchance 130;
		Maxtargetrange 8192;
	}

	States
	{
		Missile:
			WHIT F 12 A_FaceTarget;
			WHIT G 2;
			TNT1 A 0 A_PlaySound("weapons/luger/fire");
			WHIT H 4 A_CustomBulletAttack(8,0,1,4);
			Goto See;
	}
}

class ClassicGuard : PatrolGuard
{
	Default
	{
		Scale 2.0;
	}
}