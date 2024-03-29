class WolfKey : Key
{
	Default
	{
		//$Category Wolfenstein / Keys
		Inventory.PickUpSound "adlib/getkey";
		Scale 1.6;
	}
}

class WolfGoldKey : WolfKey
{
	Default
	{
		Inventory.PickupMessage "You got the Gold Key!";
		Inventory.Icon "GKEYICON";
	}
	
	States
	{
		Spawn:
			GKEY A 5;
			GKEY A 5 Bright;
			Loop;
	}
}

class WolfSilverKey : WolfKey
{
	Default
	{
		Inventory.PickupMessage "You got the Silver Key!";
		Inventory.Icon "SKEYICON";
	}
	
	States
	{
		Spawn:
			SKEY A 5;
			SKEY A 5 Bright;
			Loop;
	}
}

class WolfBronzeKey : WolfKey
{
	Default
	{
		Inventory.PickupMessage "You got the Bronze Key!";
		Inventory.Icon "BKEYICON";
	}
	
	States
	{
		Spawn:
			BKEY A 5;
			BKEY A 5 Bright;
			Loop;
	}
}

class WolfElevatorKey : WolfKey
{
	Default
	{
		Inventory.PickupMessage "You got the Elevator Key!";
		Inventory.Icon "IKEYICON";
	}
	
	States
	{
		Spawn:
			EKEY A 5;
			EKEY A 5 Bright;
			Loop;
	}
}