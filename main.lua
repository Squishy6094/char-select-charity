-- name: [CS] CHARITY
-- description: its me :)

local E_MODEL_CHARITY = smlua_model_util_get_id("charity_geo")

local TEX_CHARITY = get_texture_info("charity-icon")

local TEXT_MOD_NAME = "CHARITY"

local VOICETABLE_CHARITY = {
    [CHAR_SOUND_ATTACKED] = {'hurt1.ogg', 'hurt2.ogg', 'hurt3.ogg', 'hurt4.ogg', 'hurt5.ogg', 'hurt6.ogg', 'hurt7.ogg', 'hurt8.ogg'},
    [CHAR_SOUND_DOH] = 'bonk.ogg',
    [CHAR_SOUND_OOOF] = 'bonk.ogg',
    [CHAR_SOUND_OOOF2] = {'hurt1.ogg', 'hurt2.ogg', 'hurt3.ogg', 'hurt4.ogg', 'hurt5.ogg', 'hurt6.ogg', 'hurt7.ogg', 'hurt8.ogg'},
    [CHAR_SOUND_DROWNING] = 'diedrown.ogg',
    [CHAR_SOUND_DYING] = 'silence.ogg',
    [CHAR_SOUND_ON_FIRE] = {'hurt1.ogg', 'hurt2.ogg', 'hurt3.ogg', 'hurt4.ogg', 'hurt5.ogg', 'hurt6.ogg', 'hurt7.ogg', 'hurt8.ogg'},
    [CHAR_SOUND_WAAAOOOW] = {'hurt1.ogg', 'hurt2.ogg', 'hurt3.ogg', 'hurt4.ogg', 'hurt5.ogg', 'hurt6.ogg', 'hurt7.ogg', 'hurt8.ogg'},
	[CHAR_SOUND_UH] = 'bonk.ogg',
	[CHAR_SOUND_PANTING] = 'silence.ogg',
    [CHAR_SOUND_PUNCH_YAH] = 'punch1.ogg',
	[CHAR_SOUND_PUNCH_WAH] = 'punch2.ogg',
	[CHAR_SOUND_PUNCH_HOO] = 'punch3.ogg',
	[CHAR_SOUND_HRMM] = {'grab1.ogg', 'grab2.ogg', 'grab3.ogg'},
	[CHAR_SOUND_WAH2] = {'wah1.ogg', 'wah2.ogg', 'wah3.ogg'},
	[CHAR_SOUND_GROUND_POUND_WAH] = {'wah1.ogg', 'wah2.ogg', 'wah3.ogg'},
	[CHAR_SOUND_YAH_WAH_HOO] = {'jump1.ogg', 'jump2.ogg', 'jump3.ogg'},
	[CHAR_SOUND_HOOHOO] = {'silence.ogg'},
    [CHAR_SOUND_HAHA] = 'squeaker.ogg',
    [CHAR_SOUND_HAHA_2] = 'silence.ogg',
}


local CAPTABLE_CHARITY = {
    normal = smlua_model_util_get_id("charity_cap_geo"),
    wing = smlua_model_util_get_id("charity_cap_wing_geo"),
    metal = smlua_model_util_get_id("charity_cap_metal_geo"),
    metalWing = smlua_model_util_get_id("charity_cap_metal_wing_geo"),
}

local PALETTE_CHARITY = {
    [GLOVES] = {r = 87, g = 71, b = 75},
    [PANTS] = {r = 77, g = 11, b = 22},
    [CAP] = {r = 90, g = 21, b = 30},
    [SKIN] = {r = 255, g = 224, b = 224},
    [SHOES] = {r = 203, g = 174, b = 174},
    [HAIR] = {r = 255, g = 152, b = 162},
    [SHIRT] = {r = 151, g = 34, b = 42},
    [EMBLEM] = {r = 0, g = 0, b = 0}
}

if _G.charSelectExists then
    CT_CHARITY = _G.charSelect.character_add("CHARITY", {"strange cat...bat...bunny thing...", "freakshow central"}, "modeled by wibblus", {r = 255, g = 100, b = 100}, E_MODEL_CHARITY, CT_MARIO, TEX_CHARITY)
    _G.charSelect.character_add_caps(E_MODEL_CHARITY, CAPTABLE_CHARITY)
    _G.charSelect.character_add_palette_preset(E_MODEL_CHARITY, PALETTE_CHARITY)
    _G.charSelect.character_set_category(CT_CHARITY, "Squishy Workshop")

    -- the following must be hooked for each character added
    _G.charSelect.character_add_voice(E_MODEL_CHARITY, VOICETABLE_CHARITY)
    _G.charSelect.config_character_sounds()
else
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
end
