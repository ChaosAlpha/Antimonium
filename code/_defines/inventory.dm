// Used for gear icon states and equipment slot related code.
#define SLOT_LEFT_RING  "left_ring"
#define SLOT_RIGHT_RING "right_ring"
#define SLOT_LOWER_BODY "lower_body"
#define SLOT_FEET       "feet"
#define SLOT_BACK       "back"
#define SLOT_UPPER_BODY "upper_body"
#define SLOT_HANDS      "hands"
#define SLOT_OVER       "over"
#define SLOT_FACE       "face"
#define SLOT_EYES       "eyes"
#define SLOT_NECK       "neck"
#define SLOT_LEFT_HAND  "left_inhand"
#define SLOT_RIGHT_HAND "right_inhand"
#define SLOT_HAT        "hat"
#define SLOT_MOUTH      "mouth"

// Used to refer to limbs.
#define BP_LEFT_FOOT  "left_foot"
#define BP_RIGHT_FOOT "right_foot"
#define BP_LEFT_LEG   "left_leg"
#define BP_RIGHT_LEG  "right_leg"
#define BP_GROIN      "groin"
#define BP_CHEST      "chest"
#define BP_LEFT_HAND  "left_hand"
#define BP_RIGHT_HAND "right_hand"
#define BP_LEFT_ARM   "left_arm"
#define BP_RIGHT_ARM  "right_arm"
#define BP_HEAD       "head"

// Used for valid equipment slot bitflag; items with these flags can be equipped to the relevant slot.
#define SLOT_FLAG_RING        1
#define SLOT_FLAG_NECK        2
#define SLOT_FLAG_LOWER_BODY  4
#define SLOT_FLAG_FEET        8
#define SLOT_FLAG_BACK        16
#define SLOT_FLAG_UPPER_BODY  32
#define SLOT_FLAG_ARMS        64
#define SLOT_FLAG_HANDS       128
#define SLOT_FLAG_FACE        256
#define SLOT_FLAG_EYES        512
#define SLOT_FLAG_HAT        1024
#define SLOT_FLAG_OVER       2048

// Assoc value indicates that the slot is a limb layer rather than an equipment layer.
/var/list/inventory_slots_by_layer = list(
	BP_LEFT_FOOT =    TRUE,
	BP_RIGHT_FOOT =   TRUE,
	BP_LEFT_LEG =     TRUE,
	BP_RIGHT_LEG =    TRUE,
	SLOT_FEET =       FALSE,
	BP_GROIN =        TRUE,
	SLOT_LOWER_BODY = FALSE,
	SLOT_LEFT_HAND =  FALSE,
	SLOT_RIGHT_HAND = FALSE,
	BP_LEFT_HAND =    TRUE,
	BP_RIGHT_HAND =   TRUE,
	SLOT_HANDS =      FALSE,
	SLOT_LEFT_RING =  FALSE,
	SLOT_RIGHT_RING = FALSE,
	BP_CHEST =        TRUE,
	BP_LEFT_ARM =     TRUE,
	BP_RIGHT_ARM =    TRUE,
	SLOT_UPPER_BODY = FALSE,
	SLOT_OVER =       FALSE,
	SLOT_NECK =       FALSE,
	SLOT_BACK =       FALSE,
	BP_HEAD =         TRUE,
	SLOT_EYES =       FALSE,
	SLOT_FACE =       FALSE,
	SLOT_HAT =        FALSE
	)

#define RADIAL_MENU_DEFAULT    "default"
#define RADIAL_MENU_CRAFTING   "crafting"
#define RADIAL_MENU_BUILDING   "building"
#define RADIAL_MENU_STRUCTURES "structures"