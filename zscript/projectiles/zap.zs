class Zap : Electrobolt
{
	Default
	{
		Speed 48;
		Damage 12;
		Scale 0.24;
		Radius 3;
		Height 6;
		DamageType "Zap";
		SeeSound "ZAP2";
		MissileType "ZapTrail";
		DeathSound "projectiles/pulsedeath";
	}
	
	States
	{
		Spawn:
		ZAP6 AB 1 BRIGHT;
	}
}

class Zap2 : Zap
{
	Default
	{
		Speed 64;
		Damage 6;
		+SEEKERMISSILE
	}
	
	States
	{
		Spawn:
		ZAP6 AB 1 BRIGHT A_SeekerMissile(1, 2, 0, 0, 0);
	}
}

class PlayerZap : Zap
{
	Default
	{
		DamageType "PlayerZap";
	}
}

class PlayerHomingZap : PlayerZap
{
	Default
	{
		Speed 250;
		Scale 0.24;
		MissileType "ZapTrail2";
		+SEEKERMISSILE
	}
	
	States
	{
		Spawn:
		ZAP6 AB 1 BRIGHT A_SeekerMissile(1, 2, 0, 0, 0);
	}
}

class ZapTrail : BulletTrail
{ 
	Default
	{
		Alpha 0.56; //.75
		RenderStyle "Add";
		Speed 0;
		MissileType "ZapTrail";
		+NOBLOCKMAP
		+NOGRAVITY
		+NOTELEPORT
		+CANNOTPUSH
		+NODAMAGETHRUST
		Scale 0.24;
	}
	
	States
	{
		Spawn:
			ZAP6 ABC 3 BRIGHT A_FadeOut(0.48);
			Loop;
		Death:
			EBO2 CDE 5 Bright;
			Stop;
	}
}

class ZapTrail2 : ZapTrail
{
	Default
	{
		Alpha 0.7;
		Scale 0.24;
	}
	
	States
	{
		Spawn:
			ZAP6 ABC 3 BRIGHT A_FadeOut(0.16);
			Loop;
		Death:
			EBO2 CDE 5 Bright;
			Stop;
	}
}