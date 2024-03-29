class Knife : WolfWeapon
{
	action void A_KnifeSlash()
	{
		A_Saw("weapons/knife/swing", "weapons/knife/impact", 14, "KnifePuff1");
		A_PlaySound("weapons/knife/swing");
	}

	Default
	{
// 		Weapon.BobRangeX 0.25;
// 		Weapon.BobRangeY 0.25;
// 		Weapon.BobSpeed 3.0;
		Weapon.AmmoType2 "KnifeExtras";
		Weapon.AmmoUse2 1;
		Tag "Knife";
		+WEAPON.NOAUTOFIRE;
		+WEAPON.NOALERT;
	}
	
	States
	{
		Ready:
			KNI3 A 1 A_WeaponReady;
			Loop;
		Select:
			TNT1 A 0 A_SetCrosshair(1);
			TNT1 A 0 A_PlaySound("weapons/knife/swing");
		Selecting:
			KNI3 A 1 A_Raise(25);
			Loop;
		Deselect:
			KNI3 A 1 A_Lower(25);
			Loop;
		Fire:
			KNI3 CEG 1;
			KNI3 H 2 A_KnifeSlash();
			KNI3 FDB 1;
			KNI3 A 1 A_ReFire;
			Goto Ready;
		AltFireXXX:
			KNI3 BDF 1;
			KNI3 I 1 A_FireProjectile("KnifeThrow", 0, 1, 0, 0);
			KNI3 JKLMNOPQRST 1;
			Goto Ready;
		AltFire:
			KNTH ABCD 1;
			KNTH E 1 A_FireProjectile("KnifeThrow", 0, 1, 0, 0);
			KNTH FGHIJKLMNOPQRS 1;
			Goto Ready;
		Spawn:
			KNIF P -1;
			Stop;
	}
}

class KnifeExtras : Ammo
{
	Default
	{
		Inventory.Amount 1;
		Inventory.MaxAmount 10;	// 5
		Inventory.PickUpSound "PICKAMMO";
		Inventory.Pickupmessage "You picked up an additional knife";
	}
}

class KnifeThrow : Actor
{
	Default
	{
		Radius 4;
		Height 6;
		Speed 48;
		VSpeed 8;
		Damage 48;
		Mass 6;
		Gravity 0.4;
		Scale 1.36;
		Projectile;
		DamageType "KnifeDamage";
		SeeSound "weapons/knife/swing";
		DeathSound "weapons/knife/impact";
		-NOGRAVITY
		+MISSILE
	}
	
	States
	{
		Spawn:
			KNI2 ABCDABCD 1;
			TNT1 A 0 A_PlaySound("weapons/knife/swing");
			Loop;
		Death:
			KNI2 WXYZ 3;
			Stop;
	}
}