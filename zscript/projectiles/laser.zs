class NaziLaserTarget : FastProjectile
{
	Default
	{
		RenderStyle "Add";
		Radius 4;
		Height 5;
		Speed 160;
		Damage 0;
		Scale 2.4;
		MissileType "NaziLaserTrail";
		//SeeSound "DSMG42";
		Projectile;
		+RANDOMIZE
	}
	
	States
	{
		Spawn:
			LASR A 1 BRIGHT;
			Loop;
		Death:
			LASR A 5 Bright /*A_SetScale(0.64, 0.64)*/;
			Stop;
	}
}

class NaziLaserTrail : BulletTrail
{
	Default
	{
		Alpha 1.0; //.75
		RenderStyle "Add";
		Scale 2.4;
	}
	
	States
	{
		Spawn:
		LASR AAAA 1 BRIGHT A_FadeOut(0.016);
		Loop;
	}
}