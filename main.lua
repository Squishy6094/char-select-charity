-- name: [CS] \\#d30004\\CHARITY & Cherry
-- description: [CS] \\#d30004\\CHARITY\n\\#dcdcdc\\By \\#d0a0f0\\wibblus \\#dcdcdc\\and \\#008800\\Squishy6094\n\n\\#dcdcdc\\its me! its me! i am one cool bunny!\npress L to airdodge\nairdodge down to wavedash\n\nthank you wibblus for modeling my girl\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!

if not _G.charSelectExists then
    djui_popup_create(
        "\\#ffffdc\\\n" ..
        get_active_mod().name ..
        "\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!",
        6)
    return
end

local E_MODEL_CHARITY = smlua_model_util_get_id("charity_geo")
local E_MODEL_CHERRY = smlua_model_util_get_id("cherry_player_geo")

local TEX_CHARITY = get_texture_info("charity-icon")
local TEX_CHERRY = get_texture_info("cherry_icon")

local VOICETABLE_CHARITY = {
	[CHAR_SOUND_UH] = 'lucy_bonk.ogg',
	[CHAR_SOUND_DOH] = 'lucy_bonk.ogg',
	[CHAR_SOUND_OOOF] = 'lucy_bonk.ogg',
	[CHAR_SOUND_OOOF2] = {'lucy_hurt1.ogg', 'lucy_hurt2.ogg', 'lucy_hurt3.ogg', 'lucy_hurt4.ogg', 'lucy_hurt5.ogg', 'lucy_hurt6.ogg', 'lucy_hurt7.ogg', 'lucy_hurt8.ogg'},
	[CHAR_SOUND_ATTACKED] = {'lucy_hurt1.ogg', 'lucy_hurt2.ogg', 'lucy_hurt3.ogg', 'lucy_hurt4.ogg', 'lucy_hurt5.ogg', 'lucy_hurt6.ogg', 'lucy_hurt7.ogg', 'lucy_hurt8.ogg'},
	[CHAR_SOUND_ON_FIRE] = {'lucy_hurt1.ogg', 'lucy_hurt2.ogg', 'lucy_hurt3.ogg', 'lucy_hurt4.ogg', 'lucy_hurt5.ogg', 'lucy_hurt6.ogg', 'lucy_hurt7.ogg', 'lucy_hurt8.ogg'},
	[CHAR_SOUND_WAAAOOOW] = 'lucy_die.ogg',
	[CHAR_SOUND_DYING] = 'lucy_die.ogg',
	[CHAR_SOUND_DROWNING] = 'lucy_drown.ogg',
	[CHAR_SOUND_PANTING] = 'silence.ogg',
	[CHAR_SOUND_PUNCH_YAH] = 'lucy_punch1.ogg',
	[CHAR_SOUND_PUNCH_WAH] = 'lucy_punch2.ogg',
	[CHAR_SOUND_PUNCH_HOO] = 'lucy_punch3.ogg',
	[CHAR_SOUND_HRMM] = {'lucy_grab1.ogg', 'lucy_grab2.ogg', 'lucy_grab3.ogg'},
	[CHAR_SOUND_WAH2] = {'lucy_wah1.ogg', 'lucy_wah2.ogg', 'lucy_wah3.ogg'},
	[CHAR_SOUND_WHOA] = 'lucy_ledgegrab.ogg',
	[CHAR_SOUND_EEUH] = 'lucy_ledgeup.ogg',
	[CHAR_SOUND_UH2] = {'lucy_quickup1.ogg', 'lucy_quickup2.ogg', 'lucy_quickup3.ogg'},
	[CHAR_SOUND_GROUND_POUND_WAH] = {'lucy_wah1.ogg', 'lucy_wah2.ogg', 'lucy_wah3.ogg'},
	[CHAR_SOUND_YAH_WAH_HOO] = {'lucy_jump1.ogg', 'lucy_jump2.ogg', 'lucy_jump3.ogg'},
	[CHAR_SOUND_HOOHOO] = {'lucy_hoohoo1.ogg', 'lucy_hoohoo2.ogg'},
	[CHAR_SOUND_UH2_2] = 'lucy_longjumpland.ogg',
	[CHAR_SOUND_TWIRL_BOUNCE] = 'lucy_boing.ogg',
	[CHAR_SOUND_HAHA] = 'lucy_squeak.ogg',
	[CHAR_SOUND_HAHA_2] = 'silence.ogg',
}

local VOICETABLE_CHERRY = {
    [CHAR_SOUND_OKEY_DOKEY] =        'cherry_woohoo.ogg',
	[CHAR_SOUND_LETS_A_GO] =         'cherry_woohoo.ogg',
	[CHAR_SOUND_PUNCH_YAH] =         'cherry_punch1.ogg',
	[CHAR_SOUND_PUNCH_WAH] =         'cherry_punch2.ogg',
	[CHAR_SOUND_PUNCH_HOO] =         'cherry_punch3.ogg',
	[CHAR_SOUND_YAH_WAH_HOO] =       {'cherry_jump1.ogg', 'cherry_jump2.ogg'},
	[CHAR_SOUND_HOOHOO] =            'cherry_jump3.ogg',
	[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'cherry_wahoo.ogg', 'cherry_starget.ogg'},
	[CHAR_SOUND_UH] =                'cherry_bonk.ogg',
	[CHAR_SOUND_UH2] =               'cherry_climb_ledge.ogg',
	[CHAR_SOUND_UH2_2] =             'cherry_longjumpland.ogg',
	[CHAR_SOUND_DOH] =               {'hardbonk1.ogg', 'hardbonk2.ogg'}, -- Hard wall bonk
	[CHAR_SOUND_OOOF] =              'cherry_punch3.ogg', -- Attacked in air
	[CHAR_SOUND_OOOF2] =             {'hardbonk1.ogg', 'hardbonk2.ogg'}, -- Land from hard bonk
	[CHAR_SOUND_HAHA] =              'cherry_woohoo.ogg',
	[CHAR_SOUND_HAHA_2] =            'cherry_woohoo.ogg',
	[CHAR_SOUND_YAHOO] =             'cherry_woohoo.ogg',
	[CHAR_SOUND_DOH] =               'cherry_bonk.ogg', -- Long jump wall bonk
	[CHAR_SOUND_WHOA] =              'cherry_cliffcatch.ogg',
	[CHAR_SOUND_EEUH] =              'cherry_mamamia.ogg',
	[CHAR_SOUND_WAAAOOOW] =          'cherry_falling.ogg',
	[CHAR_SOUND_TWIRL_BOUNCE] =      'cherry_woohoo.ogg',
	[CHAR_SOUND_GROUND_POUND_WAH] =  'cherry_groundpound.ogg',
	[CHAR_SOUND_WAH2] =              'cherry_throw.ogg',
	[CHAR_SOUND_HRMM] =              'cherry_lift.ogg',
	[CHAR_SOUND_HERE_WE_GO] =        'cherry_starget.ogg',
	[CHAR_SOUND_SO_LONGA_BOWSER] =   'cherry_bowserthrow.ogg',
	[CHAR_SOUND_ATTACKED] =          {'cherry_damage1.ogg', 'cherry_damage2.ogg'},
	[CHAR_SOUND_PANTING] =           'cherry_lowhealth.ogg',
	[CHAR_SOUND_PANTING_COLD] =      'cherry_lowhealth.ogg',
	[CHAR_SOUND_ON_FIRE] =           {'cherry_fire.ogg', 'cherry_fire2.ogg'},
	[CHAR_SOUND_YAWNING] =           'cherry_yawn.ogg',
	[CHAR_SOUND_SNORING1] =          'cherry_sleep2.ogg',
	[CHAR_SOUND_SNORING2] =          'cherry_sleep3.ogg',
	[CHAR_SOUND_SNORING3] =          'cherry_punch3.ogg',
	[CHAR_SOUND_COUGHING1] =         'cherry_cough1.ogg',
	[CHAR_SOUND_COUGHING2] =         'cherry_cough2.ogg',
	[CHAR_SOUND_COUGHING3] =         'cherry_cough2.ogg',
--DEATH
	[CHAR_SOUND_DYING] =             'cherry_dying.ogg',
	[CHAR_SOUND_MAMA_MIA] =          'cherry_mamamia.ogg'
}

local CAPTABLE_CHARITY = {
    normal = smlua_model_util_get_id("charity_cap_geo"),
    wing = smlua_model_util_get_id("charity_cap_wing_geo"),
    metal = smlua_model_util_get_id("charity_cap_metal_geo"),
    metalWing = smlua_model_util_get_id("charity_cap_metal_wing_geo"),
}

local CAPS_CHERRY = {
    normal = smlua_model_util_get_id("cherry_cap_geo"),
    wing = smlua_model_util_get_id("cherry_wing_cap_geo"),
    metal = smlua_model_util_get_id("cherry_metal_cap_geo"),
    metalWing = smlua_model_util_get_id("cherry_metal_wing_cap_geo")
}

local PALETTES_CHARITY = {
	{
		name = "Default",
		[GLOVES] = {r = 87, g = 71, b = 75},
		[PANTS] = {r = 77, g = 11, b = 22},
		[CAP] = {r = 90, g = 21, b = 30},
		[SKIN] = {r = 255, g = 224, b = 224},
		[SHOES] = {r = 203, g = 174, b = 174},
		[HAIR] = {r = 255, g = 152, b = 162},
		[SHIRT] = {r = 151, g = 34, b = 42},
		[EMBLEM] = {r = 32, g = 32, b = 32}
	},
	{
		name = "Abyss",
		[GLOVES] = {r = 255, g = 255, b = 255},
		[PANTS] = {r = 22, g = 22, b = 39},
		[CAP] = {r = 97, g = 38, b = 176},
		[SKIN] = {r = 255, g = 219, b = 220},
		[SHOES] = {r = 254, g = 118, b = 0},
		[HAIR] = {r = 187, g = 119, b = 153},
		[SHIRT] = {r = 97, g = 38, b = 176},
		[EMBLEM] = {r = 255, g = 222, b = 255}
	},
	{
		name = "Ruby Gloom",
		[GLOVES] = {r = 20, g = 20, b = 20},
		[PANTS] = {r = 199, g = 55, b = 24},
		[CAP] = {r = 170, g = 26, b = 26},
		[SKIN] = {r = 238, g = 238, b = 238},
		[SHOES] = {r = 114, g = 28, b = 14},
		[HAIR] = {r = 234, g = 26, b = 26},
		[SHIRT] = {r = 32, g = 32, b = 32},
		[EMBLEM] = {r = 32, g = 32, b = 32}
	},
	{
		name = "Vampiric",
		[GLOVES] = {r = 64, g = 20, b = 21},
		[PANTS] = {r = 97, g = 19, b = 21},
		[CAP] = {r = 97, g = 19, b = 21},
		[SKIN] = {r = 208, g = 208, b = 208},
		[SHOES] = {r = 87, g = 71, b = 75},
		[HAIR] = {r = 27, g = 27, b = 27},
		[SHIRT] = {r = 80, g = 80, b = 80},
		[EMBLEM] = {r = 64, g = 20, b = 20}
	},
	{
		name = "BES FREND!!",
		[GLOVES] = {r = 38, g = 43, b = 38},
		[PANTS] = {r = 22, g = 22, b = 48},
		[CAP] = {r = 42, g = 42, b = 58},
		[SKIN] = {r = 224, g = 238, b = 224},
		[SHOES] = {r = 54, g = 54, b = 54},
		[HAIR] = {r = 61, g = 33, b = 33},
		[SHIRT] = {r = 14, g = 37, b = 2},
		[EMBLEM] = {r = 32, g = 32, b = 32}
	}
}

local PALETTES_CHERRY = {
	{
		name = "Default",
		[SHIRT] = "45544A",
		[CAP] = "45544A",
		[SHOES] = "262524",
		[HAIR] = "8C6A7A",
		[PANTS] = "232426",
		[GLOVES] = "FFFFFF",
		[SKIN] = "BF9DA4",
		[EMBLEM] = "ffffff",
	},
	{
		name = "Yummy Bunny",
		[SHIRT] = "97222A",
		[CAP] = "5A151E",
		[SHOES] = "57474B",
		[HAIR] = "FF98A2",
		[PANTS] = "4D0B16",
		[GLOVES] = "57474B",
		[SKIN] = "FFE0E0",
		[EMBLEM] = "141414",
	}
}

local EYES_CHERRY = {
	[CHAR_ANIM_STAR_DANCE] = 9
}

local _ENV = setmetatable(_G, {__index = _G.charSelect})

CT_CHARITY = character_add("Charity",
"horrible chimera that WILL steal your carrots",
"wibblus", {r = 255, g = 100, b = 100}, E_MODEL_CHARITY, CT_MARIO, TEX_CHARITY)
CT_CHERRY = character_add("Cherry",
"Cozy sloth girl!",
"wibblus", { r = 20, g = 220, b = 80 }, E_MODEL_CHERRY, CT_MARIO, TEX_CHERRY)

for i = 1, #PALETTES_CHARITY do
	character_add_palette_preset(E_MODEL_CHARITY, PALETTES_CHARITY[i], PALETTES_CHARITY[i].name)
end
for i = 1, #PALETTES_CHERRY do
	character_add_palette_preset(E_MODEL_CHERRY, PALETTES_CHERRY[i], PALETTES_CHERRY[i].name)
end

character_add_animations(E_MODEL_CHERRY, nil, EYES_CHERRY, nil)

character_add_caps(E_MODEL_CHARITY, CAPTABLE_CHARITY)
character_add_caps(E_MODEL_CHERRY, CAPS_CHERRY)

character_set_category(CT_CHARITY, "Squishy Workshop")
character_set_category(CT_CHERRY, "Squishy Workshop")
character_set_category(CT_CHARITY, get_active_mod().name)
character_set_category(CT_CHERRY, get_active_mod().name)

character_add_graffiti(CT_CHARITY, get_texture_info("charity-graffiti"))
character_add_graffiti(CT_CHERRY, get_texture_info("cherry_graffiti"))

character_add_voice(E_MODEL_CHARITY, VOICETABLE_CHARITY)
character_add_voice(E_MODEL_CHERRY, VOICETABLE_CHERRY)