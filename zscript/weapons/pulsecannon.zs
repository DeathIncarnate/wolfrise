class PulseCannon : WolfWeapon
{
	action void A_PulseFire()
	{
		A_PlaySound("weapons/pulse/fire3");
		A_Recoil(1.12);
		A_FireProjectile("PulseBall", random(-4,4 ), 1, random(-8, 8), 8, 0, 0);
		A_SetPitch(pitch - 1.0, SPF_INTERPOLATE);
	}
	
	action void A_PulseAltFire()
	{
		A_PlaySound("weapons/pulse/fire2");
		A_Recoil(2.24);
		A_FireProjectile("PulseBall", 6, 1, -6, 8, 0, 0);
		A_FireProjectile("PulseBall", 3, 1, -3, 8, 0, 0);
		A_FireProjectile("PulseBall", -3, 1, 3, 8, 0, 0);
		A_FireProjectile("PulseBall", -6, 1, 6, 8, 0, 0);
		A_SetPitch(pitch - 2.5, SPF_INTERPOLATE);
	}
	
	Default
	{
		Weapon.AmmoUse 1;
		Weapon.AmmoUse2 1;
		Weapon.AmmoGive 16;
		Weapon.AmmoType "PulseAmmo";
		Weapon.AmmoType2 "PulseAmmo";
		Inventory.Pickupmessage "You got a Pulse Cannon";
		Inventory.PickUpSound "pickups/weapongrab";
		Tag "Pulse Cannon";
		//Weapon.BobRangeX 0.1;
		//Weapon.BobRangeY 0.75;
		//Weapon.BobSpeed 1.5;
	}
	
	States
	{
		Ready:
			RIPP A 1 A_WeaponReady;
			Loop;
		Select:
			TNT1 A 0 A_SetCrosshair(7);
			TNT1 A 0 A_PlaySound("weapons/pulse/equip");
		Selecting:
			RIPP A 1 A_Raise(25);
			Loop;
		Deselect:
			RIPP A 1 A_Lower(25);
			Loop;
		Fire:
			RIPP B 1;
			RIPP C 1;
			RIPP D 1 A_PulseFire();
			RIPP C 1
			{
				A_Refire();
				A_SetPitch(pitch + 1.0, SPF_INTERPOLATE);
			}
			Goto Ready;
		AltFire:
			TNT1 A 0 A_CheckReload;
			RIPP B 1;
			RIPP C 1;
			RIPP D 1 A_PulseAltFire();
			RIPP C 1 A_SetPitch(pitch + 1.84, SPF_INTERPOLATE);
			RIPP B 2;
			Goto Ready;
		Spawn:
			MGUN P -1;
			Stop;
	}
}