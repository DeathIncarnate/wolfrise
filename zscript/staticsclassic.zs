class SteelColumn : Actor
{
	Default
	{
		//$Category Decoration / Objects / Classic
		Radius 48;
		Height 128;
		Scale 2.0;
		+SOLID
	}
		
	States
	{
		Spawn:
			SCOL A -1;
			Stop;
	}
}