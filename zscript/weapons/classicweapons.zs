class ClassicLuger : WolfWeapon
{
	Default
	{
		Weapon.AmmoUse 1;
		Weapon.AmmoUse2 1;
		Weapon.AmmoGive 8;
		Weapon.AmmoType "SmallAmmo";
		Weapon.AmmoType2 "SmallAmmo";
		Inventory.PickUpSound "pickups/weapongrab";
		Weapon.BobRangeX 0.0;
		Weapon.BobRangeY 0.0;
		Weapon.BobSpeed 0.0;
		Tag "Luger";
		+WEAPON.NOAUTOFIRE;
		-WEAPON.NOAUTOAIM;
	}
	
	States
	{
		Ready:
			GUN2 A 1 A_WeaponReady;
			Loop;
		Select:
			GUN2 A 1 A_Raise(500);
			Loop;
		Deselect:
			GUN2 A 1 A_Lower(500);
			Loop;
		Fire:
			GUN2 BC 2;
			GUN2 D 2
			{
				A_FireBullets(0, 0, 1, 16, "BulletPuff1", 0, 512000);
				A_PlaySound("weapons/classic/pistol");
			}
			GUN2 E 3;
			Goto Ready;
		Spawn:
			PIST P -1;
			Stop;
	}
}

class ClassicLuger2 : WolfWeapon
{
	Default
	{
		Weapon.AmmoUse 1;
		Weapon.AmmoUse2 1;
		Weapon.AmmoGive 8;
		Weapon.AmmoType "SmallAmmo";
		Weapon.AmmoType2 "SmallAmmo";
		Inventory.PickUpSound "pickups/weapongrab";
		Weapon.BobRangeX 0.0;
		Weapon.BobRangeY 0.0;
		Weapon.BobSpeed 0.0;
		Tag "Luger";
		+WEAPON.NOAUTOFIRE;
		-WEAPON.NOAUTOAIM;
	}
	
	States
	{
		Ready:
			WPIS A 1 A_WeaponReady;
			Loop;
		Select:
			WPIS A 1 A_Raise(500);
			Loop;
		Deselect:
			WPIS A 1 A_Lower(500);
			Loop;
		Fire:
			WPIS B 2;
			WPIS C 2
			{
				A_FireBullets(0, 0, 1, 16, "BulletPuff1", 0, 512000);
				A_PlaySound("weapons/classic/pistol2");
			}
			WPIS D 3;
			Goto Ready;
		Spawn:
			PIST P -1;
			Stop;
	}
}

class ClassicColt : WolfWeapon
{
	Default
	{
		Weapon.AmmoUse 1;
		Weapon.AmmoUse2 1;
		Weapon.AmmoGive 8;
		Weapon.AmmoType "SmallAmmo";
		Weapon.AmmoType2 "SmallAmmo";
		Inventory.PickUpSound "pickups/weapongrab";
		Weapon.BobRangeX 0.0;
		Weapon.BobRangeY 0.0;
		Weapon.BobSpeed 0.0;
		Tag "Luger";
		+WEAPON.NOAUTOFIRE;
	}
	
	States
	{
		Ready:
			COLT A 1 A_WeaponReady;
			Loop;
		Select:
			COLT A 1 A_Raise(500);
			Loop;
		Deselect:
			COLT A 1 A_Lower(500);
			Loop;
		Fire:
			COLT BC 1;
			COLT D 1
			{
				A_FireBullets(0, 0, 1, 16, "BulletPuff1", 0, 25600);
				A_PlaySound("weapons/classic/colt");
			}
			COLT E 2;
			Goto Ready;
		Spawn:
			PIST P -1;
			Stop;
	}
}

class ClassicMachinegun : WolfWeapon
{
	Default
	{
		Weapon.AmmoUse 1;
		Weapon.AmmoUse2 1;
		Weapon.AmmoGive 8;
		Weapon.AmmoType "SmallAmmo";
		Weapon.AmmoType2 "SmallAmmo";
		Inventory.PickUpSound "pickups/weapongrab";
		Weapon.BobRangeX 0.0;
		Weapon.BobRangeY 0.0;
		Weapon.BobSpeed 0.0;
		Tag "Machinegun";
		-WEAPON.NOAUTOAIM;
	}
	
	States
	{
		Ready:
			GUN3 A 1 A_WeaponReady;
			Loop;
		Select:
			GUN3 A 1 A_Raise(500);
			Loop;
		Deselect:
			GUN3 A 1 A_Lower(500);
			Loop;
		Fire:
			GUN3 BC 2;
			GUN3 D 2
			{
				A_FireBullets(0, 0, 1, 16, "BulletPuff1");
				A_PlaySound("weapons/classic/machinegun");
			}
			GUN3 C 2 A_ReFire();
			GUN3 B 2;	// 5
			Goto Ready;
		Spawn:
			GUN3 P -1;
			Stop;
	}
}

class ClassicThompson : WolfWeapon
{
	Default
	{
		Weapon.AmmoUse 1;
		Weapon.AmmoUse2 1;
		Weapon.AmmoGive 8;
		Weapon.AmmoType "SmallAmmo";
		Weapon.AmmoType2 "SmallAmmo";
		Inventory.PickUpSound "pickups/weapongrab";
		Weapon.BobRangeX 0.0;
		Weapon.BobRangeY 0.0;
		Weapon.BobSpeed 0.0;
		Tag "Machinegun";
	}
	
	States
	{
		Ready:
			THOM A 1 A_WeaponReady;
			Loop;
		Select:
			THOM A 1 A_Raise(500);
			Loop;
		Deselect:
			THOM A 1 A_Lower(500);
			Loop;
		Fire:
			THOM BC 2;
			THOM D 2
			{
				A_FireBullets(0, 0, 1, 16);
				A_PlaySound("weapons/classic/thompson");
			}
			THOM C 2 A_ReFire();
			THOM B 2;	// 5
			Goto Ready;
		Spawn:
			PIST P -1;
			Stop;
	}
}

class ClassicChaingun : WolfWeapon
{
	Default
	{
		Weapon.AmmoUse 1;
		Weapon.AmmoUse2 1;
		Weapon.AmmoGive 8;
		Weapon.AmmoType "SmallAmmo";
		Weapon.AmmoType2 "SmallAmmo";
		Inventory.PickUpSound "pickups/weapongrab";
		Weapon.BobRangeX 0.0;
		Weapon.BobRangeY 0.0;
		Weapon.BobSpeed 0.0;
		Tag "Chaingun";
		-WEAPON.NOAUTOAIM;
	}
	
	States
	{
		Ready:
			GUN4 A 1 A_WeaponReady;
			Loop;
		Select:
			GUN4 A 1 A_Raise(500);
			Loop;
		Deselect:
			GUN4 A 1 A_Lower(500);
			Loop;
		Fire:
			GUN4 B 2;
		Hold:
			GUN4 CD 3
			{
				A_FireBullets(2, 0, 1, 16, "BulletPuff1");
				A_PlaySound("weapons/classic/chaingun");
			}
			GUN4 E 2 A_Refire;
			Goto Ready;
		Spawn:
			PIST P -1;
			Stop;
	}
}

class ClassicMG42 : WolfWeapon
{
	Default
	{
		Weapon.AmmoUse 1;
		Weapon.AmmoUse2 1;
		Weapon.AmmoGive 8;
		Weapon.AmmoType "SmallAmmo";
		Weapon.AmmoType2 "SmallAmmo";
		Inventory.PickUpSound "pickups/weapongrab";
		Weapon.BobRangeX 0.0;
		Weapon.BobRangeY 0.0;
		Weapon.BobSpeed 0.0;
		Tag "Chaingun";
	}
	
	States
	{
		Ready:
			MG42 A 1 A_WeaponReady;
			Loop;
		Select:
			MG42 A 1 A_Raise(500);
			Loop;
		Deselect:
			MG42 A 1 A_Lower(500);
			Loop;
		Fire:
			MG42 B 2;
		Hold:
			MG42 CD 3
			{
				A_FireBullets(2, 0, 1, 16);
				A_PlaySound("weapons/classic/mg42");
			}
			MG42 E 2 A_Refire;
			Goto Ready;
		Spawn:
			PIST P -1;
			Stop;
	}
}

class ClassicRLauncher : WolfWeapon
{
	Default
	{
		Weapon.AmmoUse 1;
		Weapon.AmmoUse2 1;
		Weapon.AmmoGive 8;
		Weapon.AmmoType "SmallAmmo";
		Weapon.AmmoType2 "SmallAmmo";
		Inventory.PickUpSound "pickups/weapongrab";
		Weapon.BobRangeX 0.0;
		Weapon.BobRangeY 0.0;
		Weapon.BobSpeed 0.0;
		Tag "Rocket Launcher";
		+WEAPON.NOAUTOFIRE;
		-WEAPON.NOAUTOAIM;
	}
	
	States
	{
		Ready:
			GUN5 A 1 A_WeaponReady;
			Loop;
		Select:
			GUN5 A 1 A_Raise(500);
			Loop;
		Deselect:
			GUN5 A 1 A_Lower(500);
			Loop;
		Fire:
			GUN5 BC 3;
			GUN5 D 3
			{
				A_FireProjectile("ClassicRocket", 0, 1, 0, 0, 0, 0);
				A_PlaySound("weapons/classic/rlauncher");
			}
			GUN5 EF 3;
			GUN5 A 3;
			Goto Ready;
		Spawn:
			PIST P -1;
			Stop;
	}
}