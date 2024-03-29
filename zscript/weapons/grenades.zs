class GrenadeIsSelected : Inventory
{
	Default
	{
		Inventory.Amount 1;
		Inventory.MaxAmount 1;
	}
}

class SteelGrenades : WolfWeapon
{
	action void A_GrenadeToss()
	{
		A_PlaySound("weapons/knife/swing");
		A_FireProjectile("GrenadeThrow", 0, 1, 0, 0);
	}
	
	action void A_GrenadeLightToss()
	{
		A_PlaySound("weapons/knife/swing");
		A_FireProjectile("GrenadeThrowLight", 0, 1, 0, 0);
	}

	Default
	{
// 		Weapon.BobRangeX 0.04;
// 		Weapon.BobRangeY 0.28;
// 		Weapon.BobSpeed 3.0;
		Weapon.AmmoType "GrenadeAmmo";
		Weapon.AmmoType2 "GrenadeAmmo";
		Weapon.AmmoUse 1;
		Weapon.AmmoUse2 1;
		Weapon.AmmoGive 1;
		Tag "Grenades";
		+WEAPON.NOAUTOFIRE;
		+WEAPON.NOALERT;
	}
	
	States
	{
		Ready:
			GREN A 1 A_WeaponReady;
			Loop;
		Select:
			TNT1 A 0 A_PlaySound("weapons/knife/swing");
			TNT1 A 0 A_GiveInventory("GrenadeIsSelected", 1);
		Selecting:
			GREN A 1 A_Raise(25);
			Loop;
		Deselect:
			TNT1 A 0 A_TakeInventory("GrenadeIsSelected", 1);
			GREN A 1 A_Lower(25);
			Loop;
		Fire:
			GREN BD 1;
			GREN F 1 A_GrenadeToss();
			GREN GHIJK 1;
			GREN L 4;
			GREN MNOPQ 1;
			GREN A 4;
			Goto Ready;
		AltFire:
			GREN BCDE 1;
			GREN F 2 A_GrenadeLightToss();
			GREN GHIJK 1;
			GREN L 4;
			GREN MNOPQ 1;
			GREN A 4;
			Goto Ready;
	}
}

class GrenadeAmmo : Ammo
{
	Default
	{
		Inventory.Amount 1;
		Inventory.MaxAmount 10;	// 5
		Inventory.PickUpSound "PICKAMMO";
		Inventory.Pickupmessage "You picked up a grenade";
	}
	
	States
	{
		Spawn:
			NADE P -1;
			Stop;
	}
}

class GrenadeThrow : Actor
{
	Default
	{
		Radius 5;
		Height 10;
		Speed 50;
		VSpeed 16;
		Damage 48;
		Gravity 1.76;
		Projectile;
		BounceType "Grenade";
		BounceCount 3;
		BounceFactor 0.75;	//0.64
		WallBounceFactor 0.48;
		DamageType "ExplosiveDamage";
		SeeSound "weapons/grenade/bounce";
		ActiveSound "weapons/grenade/bounce";
		DeathSound "weapons/tiger/explode";
		+MISSILE
		-NOGRAVITY
	}
	
	States
	{
		Spawn:
			NADE ABAB 3 BRIGHT;
			Loop;
		Bounce:
			NADE ABAB 3 A_PlaySound("weapons/grenade/bounce");
		Death:
			TNT1 A 0
			{
				A_AlertMonsters(960);
				A_SetScale(2.1);
			}
			ROCK D 2 Bright A_Explode(80, 256);	// 64, 200
			ROCK EFGH 3 Bright;
			Stop;
	}
}

class GrenadeThrowLight : GrenadeThrow
{
	Default
	{
		Speed 18;
		VSpeed 4;
		Mass 160;
	}
}