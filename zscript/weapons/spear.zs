class SpearOfDestiny : WolfWeapon
{
	action void A_SpearStrike()
	{
		A_DamageSelf(4, "SpearDrain");
		A_Saw("weapons/spear/attack", "weapons/spear/attack", 1800);
		A_PlaySound("weapons/spear/attack");
	}
	
	Default
	{
		DamageType "SpearDrain";
		Obituary "%o became power-drunk for the Spear";
		Weapon.BobRangeX 0.0;
		Weapon.BobRangeY 0.88;
		//Weapon.BobSpeed 1.0;
		Tag "The Spear of Destiny";
		+WEAPON.NOAUTOFIRE;
		+WEAPON.NOALERT;
	}
	
	States
	{
		Ready:
			DEST A 1 A_WeaponReady;
			Loop;
		Select:
			TNT1 A 0 A_PlaySound("weapons/spear/attack");
		Selecting:
			DEST A 1 A_Raise(16);
			Loop;
		Deselect:
			DEST A 1 A_Lower(16);
			Loop;
		Fire:
			DEST BCDEF 1
			{
				A_Recoil(-24.0);
				A_SpearStrike();
			}
			DEST G 4 A_SpearStrike();
			DEST FEDCB 1;
			DEST A 4;
			DEST A 1 A_ReFire;
			Goto Ready;
		AltFire:
			DEST BCDF 1;
			DEST G 4
			{
				A_DamageSelf(10, "SpearDrain");
				A_Playsound("weapons/spear/attack2", 0, 4.0);
				A_FireProjectile("SpearBall", -16, 1, 0, 0);
				A_FireProjectile("SpearBall", -15, 1, 0, 0);
				A_FireProjectile("SpearBall", -14, 1, 0, 0);
				A_FireProjectile("SpearBall", -13, 1, 0, 0);
				A_FireProjectile("SpearBall", -12, 1, 0, 0);
				A_FireProjectile("SpearBall", -11, 1, 0, 0);
				A_FireProjectile("SpearBall", -10, 1, 0, 0);
				A_FireProjectile("SpearBall", -9, 1, 0, 0);
				A_FireProjectile("SpearBall", -8, 1, 0, 0);
				A_FireProjectile("SpearBall", -7, 1, 0, 0);
				A_FireProjectile("SpearBall", -6, 1, 0, 0);
				A_FireProjectile("SpearBall", -5, 1, 0, 0);
				A_FireProjectile("SpearBall", -4, 1, 0, 0);
				A_FireProjectile("SpearBall", -3, 1, 0, 0);
				A_FireProjectile("SpearBall", -2, 1, 0, 0);
				A_FireProjectile("SpearBall", -1, 1, 0, 0);
				A_FireProjectile("SpearBall", 0, 1, 0, 0);
				A_FireProjectile("SpearBall", 1, 1, 0, 0);
				A_FireProjectile("SpearBall", 2, 1, 0, 0);
				A_FireProjectile("SpearBall", 3, 1, 0, 0);
				A_FireProjectile("SpearBall", 4, 1, 0, 0);
				A_FireProjectile("SpearBall", 5, 1, 0, 0);
				A_FireProjectile("SpearBall", 6, 1, 0, 0);
				A_FireProjectile("SpearBall", 7, 1, 0, 0);
				A_FireProjectile("SpearBall", 8, 1, 0, 0);
				A_FireProjectile("SpearBall", 9, 1, 0, 0);
				A_FireProjectile("SpearBall", 10, 1, 0, 0);
				A_FireProjectile("SpearBall", 11, 1, 0, 0);
				A_FireProjectile("SpearBall", 12, 1, 0, 0);
				A_FireProjectile("SpearBall", 13, 1, 0, 0);
				A_FireProjectile("SpearBall", 14, 1, 0, 0);
				A_FireProjectile("SpearBall", 15, 1, 0, 0);
				A_FireProjectile("SpearBall", 16, 1, 0, 0);
			}
			DEST FDCB 1;
			DEST A 6;
			Goto Ready;
		Spawn:
			DEST P 16;
			DEST QRS 2;
			DEST T 16;
			DEST SRQ 2;
			Loop;
	}
}