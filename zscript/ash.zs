class FloatingAsh : Actor
{
	Default
	{
		Health 1600;
		Radius 1;
		Height 1;
		RenderStyle "Add";
		Scale 0.096;
		ReactionTime 250;
		Gravity 0.32;
		Speed 1;
		VSpeed 1;
		Mass 1;
		+Missile
		+NoBlockmap
		+RANDOMIZE
	}
	
	States
	{
		Spawn:
			ASHX A 0 A_Jump(128, "Spawn2");
		Spawn1:
			ASHX ABCDEFGH 4 A_CountDown;
			Loop;
		Spawn2:
			ASHX HGFEDCBA 4 A_CountDown;
			Loop;
		Death:
			ASHX F 4 A_FadeOut(random(0.16, 0.24));
			Loop;
	}
}