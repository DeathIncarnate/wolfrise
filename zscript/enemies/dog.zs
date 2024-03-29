class Dog : Actor
{
	Default
	{
		//$Category Enemies
		ReactionTime 4;
		obituary "%o was devoured by a dog.";
		radius 25;
		height 56;
		Health 14;
		mass 16;
		painchance 0;
		Speed 25;
		Scale 1.36;
		MeleeRange 96;
		MaxStepHeight 24;
		seesound "DOG1BARK";
		deathsound "DOG1DETH";
		MONSTER;
		+MISSILEMORE
		+MISSILEEVENMORE
		+NOINFIGHTING
		+DONTHARMSPECIES
		-CANUSEWALLS
	}
	
	States
	{
		Spawn:
			DOG1 A 2 A_Look;
			Loop;
		See:
			DOG1 AABBCCDD 3 A_Chase;
			Loop;
		Melee:
			DOG1 I 4 A_FaceTarget;
			DOG1 J 4;
			DOG1 K 4 A_CustomMeleeAttack(8, "DOG1BITE");
			Goto See;
		Death:
			TNT1 A 0 A_GiveInventory("WolfScore", 200, AAPTR_PLAYER1);
			DOG1 E 7;
			DOG1 F 7 A_Scream;
			DOG1 G 7 A_NoBlocking;
			DOG1 H -1;
			Stop;
	}
}

class Dog_Hard : Dog
{
	Default
	{
		ReactionTime 1;
		speed 35;
	}
}