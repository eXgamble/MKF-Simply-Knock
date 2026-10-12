Scriptname SimplyKnockSKSE Hidden
{Replaces Simply Knock's SKSE native (its DLL predates Anniversary Edition): the door on the other side, from powerofthree's Papyrus Extender.}

ObjectReference Function GetLinkedDoor(ObjectReference akDoor) Global
	Return PO3_SKSEFunctions.GetDoorDestination(akDoor)
EndFunction
