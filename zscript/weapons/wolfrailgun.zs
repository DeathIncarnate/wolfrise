class WolfRailgun : WolfWeapon
{
	action void A_RailFire()
	{
		A_PlaySound("weapons/railgun/fire");
		A_Recoil(16.0);
		A_FireProjectile("RailLaser", 0, 1, 0, 8, 0, 0);
	}
	
	Default
	{
		Weapon.AmmoUse 50;
		Weapon.AmmoUse2 1;
		Weapon.AmmoGive 16;
		Weapon.AmmoType "PulseAmmo";
		Weapon.AmmoType2 "PulseAmmo";
		Inventory.Pickupmessage "You got a Pulse Cannon";
		Inventory.PickUpSound "pickups/weapongrab";
		Tag "Railgun";
// 		Weapon.BobRangeX 0.1;
// 		Weapon.BobRangeY 0.75;
// 		Weapon.BobSpeed 1.5;
	}
	
	States
	{
		Ready:
			RAIL A 1 A_WeaponReady;
			Loop;
		Select:
			TNT1 A 0 A_SetCrosshair(9);
			RAIL A 1 A_Raise(25);
			Loop;
		Deselect:
			RAIL A 1 A_Lower(25);
			Loop;
		Fire:
			RAIL B 2;
			RAIL C 1 A_RailFire();
			RAIL DE 1;
			RAIL F 32;
			RAIL GHIJKLMNOP 2 ;
			//RAIL IJH 1 A_SetPitch(pitch - 1.75, SPF_INTERPOLATE);
			//RAIL GFEDB 3 A_SetPitch(pitch + 0.5, SPF_INTERPOLATE);
			RAIL A 8;
			Goto Ready;
		Spawn:
			RAIL Z -1;
			Stop;
	}
}