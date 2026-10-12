Scriptname MKFSK_PlayerScript extends ReferenceAlias
{MKF - Simply Knock: the Modifier Key Framework's Knock action on a locked house door runs Simply Knock's own knock.}

Event OnInit()
	RegisterForModEvent("MKFSK_Knock", "OnKnock")
EndEvent

; mod event registrations don't survive a load
Event OnPlayerLoadGame()
	RegisterForModEvent("MKFSK_Knock", "OnKnock")
EndEvent

Event OnKnock(String asEventName, String asRuleId, Float afAction, Form akTarget)
	ObjectReference knockedDoor = akTarget As ObjectReference
	SimplyKnockMainScript simplyKnock = (Game.GetFormFromFile(0x001827, "SimplyKnock.esp") As Quest) As SimplyKnockMainScript
	If knockedDoor && simplyKnock
		simplyKnock.KnockOnDoor(knockedDoor)
	EndIf
EndEvent
