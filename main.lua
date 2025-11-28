-- name: [CS] \\#d30004\\CHARITY
-- description: [CS] \\#d30004\\CHARITY\n\\#dcdcdc\\By \\#d0a0f0\\wibblus \\#dcdcdc\\and \\#008800\\Squishy6094\n\n\\#dcdcdc\\its me! its me! i am one cool bunny!\npress L to airdodge\nairdodge down to wavedash\n\nthank you wibblus for modeling my girl\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!

local E_MODEL_CHARITY = smlua_model_util_get_id("charity_geo")

local TEX_CHARITY = get_texture_info("charity-icon")

local TEXT_MOD_NAME = "CHARITY"

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


local CAPTABLE_CHARITY = {
    normal = smlua_model_util_get_id("charity_cap_geo"),
    wing = smlua_model_util_get_id("charity_cap_wing_geo"),
    metal = smlua_model_util_get_id("charity_cap_metal_geo"),
    metalWing = smlua_model_util_get_id("charity_cap_metal_wing_geo"),
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

CT_CHARITY = 0
if _G.charSelectExists then
    CT_CHARITY = _G.charSelect.character_add("CHARITY", {"horrible chimera that WILL steal your carrots"}, "wibblus", {r = 255, g = 100, b = 100}, E_MODEL_CHARITY, CT_MARIO, TEX_CHARITY)
    _G.charSelect.character_add_caps(E_MODEL_CHARITY, CAPTABLE_CHARITY)
	for i = 1, #PALETTES_CHARITY do
		_G.charSelect.character_add_palette_preset(E_MODEL_CHARITY, PALETTES_CHARITY[i], PALETTES_CHARITY[i].name)
	end
    _G.charSelect.character_set_category(CT_CHARITY, "Squishy Workshop")
	_G.charSelect.character_add_graffiti(CT_CHARITY, get_texture_info("charity-graffiti"))

    -- the following must be hooked for each character added
    _G.charSelect.character_add_voice(E_MODEL_CHARITY, VOICETABLE_CHARITY)
    _G.charSelect.config_character_sounds()
else
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
end