/datum/wound/proc/GetPain()
	var/pain = (depth * severity)
	if(wound_type == WOUND_BURN)
		pain *= 2
	else if(wound_type == WOUND_BRUISE)
		pain *= 1.25
	else if(wound_type == WOUND_CUT && !bleed_amount)
		pain *= 0.75

/datum/wound/proc/Bleed()
	if(wound_type == WOUND_CUT && severity > 3 && bleed_amount)
		if(!Bandaged())
			owner.RemoveOwnerBlood(max(1,round(severity * 0.1)))
		bleed_amount = max(0, bleed_amount--)

/datum/wound/proc/Bandaged()
	return bandaged

/datum/wound/proc/CanRegenerate()
	return (severity < 30 && (wound_type != WOUND_CUT || Bandaged()))

/datum/wound/proc/AttemptRegeneration(var/amount)

	if(!CanRegenerate())
		return

	if(depth > 1 && severity > 1)
		amount = round(amount/2)
		depth = max(1, depth-amount)
		severity = max(1, severity-amount)
	else if(depth > 1)
		depth = max(1, depth-amount)
	else if(severity > 1)
		severity = max(1, severity-amount)
	else
		QDel(src, "wound regeneration")
		return

	if(severity < 3 && depth < 3 && bleed_amount)
		bleed_amount = 0

/datum/wound/Destroy()
	owner.wounds -= src
	owner = null
	. = ..()

/datum/wound/proc/Bandage()
	bandaged = TRUE

/datum/wound/proc/CanBandage()
	return (!Bandaged() && bleed_amount > 0 && wound_type == WOUND_CUT && severity <= BANDAGE_THRESHOLD)

/datum/wound/proc/Reopen()
	bandaged = FALSE