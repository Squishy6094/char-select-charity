Lights1 cherry_metal_wing_cap_Metal__CAP__lights = gdSPDefLights1(
	0xBC, 0xBC, 0xBC,
	0x0, 0x0, 0x0, 0x28, 0x28, 0x28);

Lights1 cherry_metal_wing_cap_Metal_Wing_Tip_lights = gdSPDefLights1(
	0xBC, 0xBC, 0xBC,
	0x0, 0x0, 0x0, 0x28, 0x28, 0x28);

Lights1 cherry_metal_wing_cap_Metal_Wing_Base_lights = gdSPDefLights1(
	0xBC, 0xBC, 0xBC,
	0x0, 0x0, 0x0, 0x28, 0x28, 0x28);

Texture cherry_metal_wing_cap_Metal_Shade_rgba16_rgba16[] = {
	#include "actors/cherry_metal_wing_cap/Metal_Shade.rgba16.inc.c"
};

Texture cherry_metal_wing_cap_Metal_Light_rgba16_rgba16[] = {
	#include "actors/cherry_metal_wing_cap/Metal_Light.rgba16.inc.c"
};

Texture cherry_metal_wing_cap_custom_mario_metal_wing_tip_shade_rgba16[] = {
	#include "actors/cherry_metal_wing_cap/custom_mario_metal_wing_tip_shade.rgba16.inc.c"
};

Texture cherry_metal_wing_cap_custom_mario_metal_wing_tip_light_rgba16[] = {
	#include "actors/cherry_metal_wing_cap/custom_mario_metal_wing_tip_light.rgba16.inc.c"
};

Texture cherry_metal_wing_cap_custom_mario_metal_wing_shade_rgba16[] = {
	#include "actors/cherry_metal_wing_cap/custom_mario_metal_wing_shade.rgba16.inc.c"
};

Texture cherry_metal_wing_cap_custom_mario_metal_wing_light_rgba16[] = {
	#include "actors/cherry_metal_wing_cap/custom_mario_metal_wing_light.rgba16.inc.c"
};

Vtx cherry_metal_wing_cap_Winged_Metal_Cap_mesh_layer_1_vtx_0[87] = {
	{{{-115, 56, 0}, 0, {1022, -390}, {0x97, 0x3D, 0xDA, 0xFF}}},
	{{{-102, 59, -2}, 0, {1021, -528}, {0xE1, 0x6C, 0xC5, 0xFF}}},
	{{{-79, 5, -55}, 0, {853, -466}, {0xB7, 0x9E, 0xDC, 0xFF}}},
	{{{-83, 71, 73}, 0, {1154, -528}, {0xF6, 0x7F, 0xFE, 0xFF}}},
	{{{-97, 71, 86}, 0, {1158, -389}, {0xAC, 0x50, 0x35, 0xFF}}},
	{{{0, 63, 114}, 0, {1283, -528}, {0x00, 0x7E, 0x0D, 0xFF}}},
	{{{0, 60, 135}, 0, {1283, -380}, {0x00, 0x50, 0x63, 0xFF}}},
	{{{83, 71, 73}, 0, {1411, -528}, {0x0A, 0x7F, 0xFE, 0xFF}}},
	{{{96, 71, 86}, 0, {1408, -390}, {0x54, 0x50, 0x35, 0xFF}}},
	{{{102, 59, -2}, 0, {1544, -528}, {0x1F, 0x6C, 0xC5, 0xFF}}},
	{{{115, 56, 0}, 0, {1543, -391}, {0x69, 0x3D, 0xDA, 0xFF}}},
	{{{79, 5, -55}, 0, {1712, -466}, {0x49, 0x9E, 0xDC, 0xFF}}},
	{{{-79, 5, -55}, 0, {-260, 495}, {0xB7, 0x9E, 0xDC, 0xFF}}},
	{{{-101, 6, -6}, 0, {-260, 495}, {0xB5, 0x9A, 0xF5, 0xFF}}},
	{{{-115, 56, 0}, 0, {-126, 494}, {0x97, 0x3D, 0xDA, 0xFF}}},
	{{{-105, 16, 25}, 0, {262, 491}, {0x99, 0xBA, 0x18, 0xFF}}},
	{{{-101, 6, -6}, 0, {1527, -441}, {0xB5, 0x9A, 0xF5, 0xFF}}},
	{{{-89, 9, 25}, 0, {1466, -529}, {0xF1, 0x82, 0x0C, 0xFF}}},
	{{{-105, 16, 25}, 0, {1469, -311}, {0x99, 0xBA, 0x18, 0xFF}}},
	{{{-85, 24, 99}, 0, {1330, -261}, {0xAA, 0xCE, 0x4F, 0xFF}}},
	{{{-76, 13, 84}, 0, {1338, -529}, {0xE1, 0x86, 0x0F, 0xFF}}},
	{{{0, 6, 144}, 0, {1173, -339}, {0x00, 0xC9, 0x72, 0xFF}}},
	{{{1, -3, 118}, 0, {1220, -529}, {0x02, 0x81, 0x07, 0xFF}}},
	{{{84, 24, 99}, 0, {1334, -257}, {0x59, 0xD0, 0x4D, 0xFF}}},
	{{{67, 9, 98}, 0, {1340, -530}, {0x20, 0x87, 0x17, 0xFF}}},
	{{{84, 24, 99}, 0, {1329, -260}, {0x59, 0xD0, 0x4D, 0xFF}}},
	{{{67, 9, 98}, 0, {1337, -529}, {0x20, 0x87, 0x17, 0xFF}}},
	{{{89, 9, 25}, 0, {1466, -529}, {0x11, 0x83, 0x0B, 0xFF}}},
	{{{105, 16, 25}, 0, {1469, -311}, {0x68, 0xBB, 0x18, 0xFF}}},
	{{{101, 6, -6}, 0, {1527, -441}, {0x4A, 0x9A, 0xF4, 0xFF}}},
	{{{79, 5, -55}, 0, {-260, 495}, {0x49, 0x9E, 0xDC, 0xFF}}},
	{{{115, 56, 0}, 0, {-126, 494}, {0x69, 0x3D, 0xDA, 0xFF}}},
	{{{101, 6, -6}, 0, {-260, 495}, {0x4A, 0x9A, 0xF4, 0xFF}}},
	{{{105, 16, 25}, 0, {262, 491}, {0x68, 0xBB, 0x18, 0xFF}}},
	{{{-115, 56, 0}, 0, {-126, 494}, {0x97, 0x3D, 0xDA, 0xFF}}},
	{{{-85, 24, 99}, 0, {-260, 495}, {0xAA, 0xCE, 0x4F, 0xFF}}},
	{{{-97, 71, 86}, 0, {-260, 495}, {0xAC, 0x50, 0x35, 0xFF}}},
	{{{0, 6, 144}, 0, {-260, 495}, {0x00, 0xC9, 0x72, 0xFF}}},
	{{{0, 60, 135}, 0, {-260, 495}, {0x00, 0x50, 0x63, 0xFF}}},
	{{{96, 71, 86}, 0, {-260, 495}, {0x54, 0x50, 0x35, 0xFF}}},
	{{{84, 24, 99}, 0, {-260, 495}, {0x59, 0xD0, 0x4D, 0xFF}}},
	{{{115, 56, 0}, 0, {-126, 494}, {0x69, 0x3D, 0xDA, 0xFF}}},
	{{{-76, 13, 84}, 0, {1277, -632}, {0xE1, 0x86, 0x0F, 0xFF}}},
	{{{-89, 9, 25}, 0, {1277, -632}, {0xF1, 0x82, 0x0C, 0xFF}}},
	{{{0, 29, 16}, 0, {1277, -632}, {0xFF, 0x81, 0x04, 0xFF}}},
	{{{-101, 6, -6}, 0, {1277, -632}, {0xB5, 0x9A, 0xF5, 0xFF}}},
	{{{1, 13, -47}, 0, {1277, -632}, {0x00, 0x90, 0x3D, 0xFF}}},
	{{{-79, 5, -55}, 0, {1277, -632}, {0xB7, 0x9E, 0xDC, 0xFF}}},
	{{{0, -16, -72}, 0, {1277, -632}, {0x00, 0x81, 0x07, 0xFF}}},
	{{{79, 5, -55}, 0, {1277, -632}, {0x49, 0x9E, 0xDC, 0xFF}}},
	{{{101, 6, -6}, 0, {1277, -632}, {0x4A, 0x9A, 0xF4, 0xFF}}},
	{{{89, 9, 25}, 0, {1277, -632}, {0x11, 0x83, 0x0B, 0xFF}}},
	{{{-2, 19, 83}, 0, {1277, -632}, {0x01, 0x87, 0xD9, 0xFF}}},
	{{{67, 9, 98}, 0, {1277, -632}, {0x20, 0x87, 0x17, 0xFF}}},
	{{{1, -3, 118}, 0, {1277, -632}, {0x02, 0x81, 0x07, 0xFF}}},
	{{{-92, 80, -50}, 0, {-260, 495}, {0x8F, 0x36, 0xEC, 0xFF}}},
	{{{-102, 59, -2}, 0, {-260, 495}, {0x90, 0x3B, 0xF5, 0xFF}}},
	{{{-68, 45, -91}, 0, {-260, 495}, {0xA9, 0xE4, 0xA8, 0xFF}}},
	{{{-60, 102, -97}, 0, {-260, 495}, {0xAB, 0x42, 0xBD, 0xFF}}},
	{{{0, 144, -79}, 0, {-260, 495}, {0x00, 0x7D, 0xEB, 0xFF}}},
	{{{-65, 90, -17}, 0, {-260, 495}, {0xB9, 0x69, 0xFF, 0xFF}}},
	{{{-71, 108, 50}, 0, {-260, 495}, {0xAE, 0x5C, 0x1F, 0xFF}}},
	{{{-83, 71, 73}, 0, {-260, 495}, {0xA9, 0x3C, 0x47, 0xFF}}},
	{{{0, 117, 90}, 0, {-260, 495}, {0x00, 0x59, 0x5B, 0xFF}}},
	{{{-83, 71, 73}, 0, {-260, 495}, {0xA9, 0x3C, 0x47, 0xFF}}},
	{{{0, 63, 114}, 0, {-260, 495}, {0x00, 0x40, 0x6E, 0xFF}}},
	{{{0, 117, 90}, 0, {-260, 495}, {0x00, 0x59, 0x5B, 0xFF}}},
	{{{83, 71, 73}, 0, {-260, 495}, {0x57, 0x3C, 0x47, 0xFF}}},
	{{{71, 108, 50}, 0, {-260, 495}, {0x52, 0x5C, 0x1F, 0xFF}}},
	{{{102, 59, -2}, 0, {-260, 495}, {0x70, 0x3B, 0xF5, 0xFF}}},
	{{{64, 90, -17}, 0, {-260, 495}, {0x47, 0x69, 0xFF, 0xFF}}},
	{{{91, 80, -50}, 0, {-260, 495}, {0x71, 0x36, 0xEC, 0xFF}}},
	{{{79, 5, -55}, 0, {-260, 495}, {0x49, 0x9E, 0xDC, 0xFF}}},
	{{{67, 45, -91}, 0, {-260, 495}, {0x57, 0xE4, 0xA8, 0xFF}}},
	{{{0, 9, -110}, 0, {-260, 495}, {0x00, 0xB4, 0x9A, 0xFF}}},
	{{{0, -16, -72}, 0, {-260, 495}, {0x00, 0x81, 0x07, 0xFF}}},
	{{{-79, 5, -55}, 0, {-260, 495}, {0xB7, 0x9E, 0xDC, 0xFF}}},
	{{{-68, 45, -91}, 0, {-260, 495}, {0xA9, 0xE4, 0xA8, 0xFF}}},
	{{{0, 89, -139}, 0, {-260, 495}, {0x00, 0x1B, 0x84, 0xFF}}},
	{{{-60, 102, -97}, 0, {-260, 495}, {0xAB, 0x42, 0xBD, 0xFF}}},
	{{{0, 144, -79}, 0, {-260, 495}, {0x00, 0x7D, 0xEB, 0xFF}}},
	{{{60, 102, -97}, 0, {-260, 495}, {0x55, 0x42, 0xBD, 0xFF}}},
	{{{0, 124, -17}, 0, {-260, 495}, {0x00, 0x79, 0x26, 0xFF}}},
	{{{-65, 90, -17}, 0, {-260, 495}, {0xB9, 0x69, 0xFF, 0xFF}}},
	{{{0, 124, -17}, 0, {-260, 495}, {0x00, 0x78, 0xD8, 0xFF}}},
	{{{0, 143, 36}, 0, {-260, 495}, {0x00, 0x7F, 0x03, 0xFF}}},
	{{{-71, 108, 50}, 0, {-260, 495}, {0xAE, 0x5C, 0x1F, 0xFF}}},
};

Gfx cherry_metal_wing_cap_Winged_Metal_Cap_mesh_layer_1_tri_0[] = {
	gsSPVertex(cherry_metal_wing_cap_Winged_Metal_Cap_mesh_layer_1_vtx_0 + 0, 64, 0),
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
	gsSP2Triangles(0, 4, 3, 0, 5, 3, 4, 0),
	gsSP2Triangles(5, 4, 6, 0, 6, 7, 5, 0),
	gsSP2Triangles(6, 8, 7, 0, 9, 7, 8, 0),
	gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
	gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
	gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
	gsSP2Triangles(17, 20, 19, 0, 21, 19, 20, 0),
	gsSP2Triangles(21, 20, 22, 0, 22, 23, 21, 0),
	gsSP2Triangles(22, 24, 23, 0, 25, 26, 27, 0),
	gsSP2Triangles(25, 27, 28, 0, 28, 27, 29, 0),
	gsSP2Triangles(30, 31, 32, 0, 31, 33, 32, 0),
	gsSP2Triangles(34, 15, 35, 0, 34, 35, 36, 0),
	gsSP2Triangles(36, 35, 37, 0, 36, 37, 38, 0),
	gsSP2Triangles(37, 39, 38, 0, 37, 40, 39, 0),
	gsSP2Triangles(39, 40, 33, 0, 39, 33, 41, 0),
	gsSP2Triangles(42, 43, 44, 0, 43, 45, 44, 0),
	gsSP2Triangles(45, 46, 44, 0, 45, 47, 46, 0),
	gsSP2Triangles(47, 48, 46, 0, 48, 49, 46, 0),
	gsSP2Triangles(44, 46, 49, 0, 44, 49, 50, 0),
	gsSP2Triangles(44, 50, 51, 0, 52, 44, 51, 0),
	gsSP2Triangles(52, 51, 53, 0, 52, 53, 54, 0),
	gsSP2Triangles(42, 52, 54, 0, 42, 44, 52, 0),
	gsSP2Triangles(55, 12, 56, 0, 57, 12, 55, 0),
	gsSP2Triangles(57, 55, 58, 0, 58, 55, 59, 0),
	gsSP2Triangles(59, 55, 60, 0, 56, 60, 55, 0),
	gsSP2Triangles(60, 56, 61, 0, 56, 62, 61, 0),
	gsSP1Triangle(62, 63, 61, 0),
	gsSPVertex(cherry_metal_wing_cap_Winged_Metal_Cap_mesh_layer_1_vtx_0 + 64, 23, 0),
	gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
	gsSP2Triangles(2, 3, 4, 0, 5, 4, 3, 0),
	gsSP2Triangles(6, 4, 5, 0, 7, 6, 5, 0),
	gsSP2Triangles(7, 5, 8, 0, 9, 7, 8, 0),
	gsSP2Triangles(8, 10, 9, 0, 8, 11, 10, 0),
	gsSP2Triangles(12, 10, 11, 0, 12, 13, 10, 0),
	gsSP2Triangles(14, 10, 13, 0, 15, 14, 13, 0),
	gsSP2Triangles(15, 16, 14, 0, 17, 14, 16, 0),
	gsSP2Triangles(17, 16, 7, 0, 6, 7, 16, 0),
	gsSP2Triangles(18, 6, 16, 0, 18, 16, 19, 0),
	gsSP2Triangles(9, 17, 7, 0, 17, 9, 14, 0),
	gsSP2Triangles(14, 9, 10, 0, 20, 4, 6, 0),
	gsSP2Triangles(20, 21, 4, 0, 20, 22, 21, 0),
	gsSP2Triangles(20, 19, 22, 0, 21, 22, 2, 0),
	gsSP1Triangle(21, 2, 4, 0),
	gsSPEndDisplayList(),
};

Vtx cherry_metal_wing_cap_Wings_mesh_layer_4_vtx_0[8] = {
	{{{-175, 14, -97}, 0, {1008, 2032}, {0xA6, 0xED, 0x58, 0xFF}}},
	{{{-117, 37, -31}, 0, {-16, 2032}, {0xA7, 0xED, 0x58, 0xFF}}},
	{{{-227, 186, -112}, 0, {1008, -16}, {0xA6, 0xED, 0x58, 0xFF}}},
	{{{-169, 210, -47}, 0, {-16, -16}, {0xA6, 0xED, 0x58, 0xFF}}},
	{{{228, 186, -112}, 0, {1008, -16}, {0x5A, 0xED, 0x58, 0xFF}}},
	{{{117, 37, -31}, 0, {-16, 2032}, {0x59, 0xED, 0x58, 0xFF}}},
	{{{176, 14, -97}, 0, {1008, 2032}, {0x5A, 0xED, 0x58, 0xFF}}},
	{{{169, 210, -47}, 0, {-16, -16}, {0x5A, 0xED, 0x58, 0xFF}}},
};

Gfx cherry_metal_wing_cap_Wings_mesh_layer_4_tri_0[] = {
	gsSPVertex(cherry_metal_wing_cap_Wings_mesh_layer_4_vtx_0 + 0, 8, 0),
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
	gsSPEndDisplayList(),
};

Vtx cherry_metal_wing_cap_Wings_mesh_layer_4_vtx_1[8] = {
	{{{-117, 37, -31}, 0, {1008, 2032}, {0xA7, 0xED, 0x58, 0xFF}}},
	{{{-58, 60, 32}, 0, {-16, 2032}, {0xA7, 0xED, 0x58, 0xFF}}},
	{{{-169, 210, -47}, 0, {1008, -16}, {0xA6, 0xED, 0x58, 0xFF}}},
	{{{-111, 233, 17}, 0, {-16, -16}, {0xA7, 0xED, 0x58, 0xFF}}},
	{{{169, 210, -47}, 0, {1008, -16}, {0x5A, 0xED, 0x58, 0xFF}}},
	{{{59, 60, 32}, 0, {-16, 2032}, {0x59, 0xED, 0x58, 0xFF}}},
	{{{117, 37, -31}, 0, {1008, 2032}, {0x59, 0xED, 0x58, 0xFF}}},
	{{{111, 233, 17}, 0, {-16, -16}, {0x59, 0xED, 0x58, 0xFF}}},
};

Gfx cherry_metal_wing_cap_Wings_mesh_layer_4_tri_1[] = {
	gsSPVertex(cherry_metal_wing_cap_Wings_mesh_layer_4_vtx_1 + 0, 8, 0),
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
	gsSPEndDisplayList(),
};


Gfx mat_cherry_metal_wing_cap_Metal__CAP_[] = {
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsSPLight(&cherry_metal_wing_cap_Metal__CAP__lights.l, 1),
    gsSPLight(&cherry_metal_wing_cap_Metal__CAP__lights.a, 2),
    gsSPCopyLightEXT(2, 15),
	gsDPPipeSync(),
	gsDPSetCombineLERP(TEXEL0, 0, SHADE, TEXEL1, 0, 0, 0, ENVIRONMENT, TEXEL0, 0, SHADE, TEXEL1, 0, 0, 0, ENVIRONMENT),
	gsDPSetAlphaDither(G_AD_NOISE),
	gsDPSetAlphaCompare(G_AC_DITHER),
	gsSPTexture(4032, 1984, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, cherry_metal_wing_cap_Metal_Shade_rgba16_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 2047, 128),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 5, 0, G_TX_WRAP | G_TX_NOMIRROR, 6, 0),
	gsDPSetTileSize(0, 0, 0, 252, 124),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, cherry_metal_wing_cap_Metal_Light_rgba16_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 512, 6, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(6, 0, 0, 2047, 128),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 512, 1, 0, G_TX_WRAP | G_TX_NOMIRROR, 5, 0, G_TX_WRAP | G_TX_NOMIRROR, 6, 0),
	gsDPSetTileSize(1, 0, 0, 252, 124),
	gsSPEndDisplayList(),
};

Gfx mat_revert_cherry_metal_wing_cap_Metal__CAP_[] = {
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPPipeSync(),
	gsDPSetAlphaDither(G_AD_DISABLE),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

Gfx mat_cherry_metal_wing_cap_Metal_Wing_Tip[] = {
	gsSPClearGeometryMode(G_CULL_BACK),
	gsSPLight(&cherry_metal_wing_cap_Metal_Wing_Tip_lights.l, 1),
    gsSPLight(&cherry_metal_wing_cap_Metal_Wing_Tip_lights.a, 2),
    gsSPCopyLightEXT(2, 15),
	gsDPPipeSync(),
	gsDPSetCombineLERP(TEXEL0, 0, SHADE, TEXEL1, TEXEL0, 0, ENVIRONMENT, 0, TEXEL0, 0, SHADE, TEXEL1, TEXEL0, 0, ENVIRONMENT, 0),
	gsDPSetAlphaDither(G_AD_NOISE),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, cherry_metal_wing_cap_custom_mario_metal_wing_tip_shade_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 2047, 256),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, G_TX_CLAMP | G_TX_NOMIRROR, 6, 0, G_TX_CLAMP | G_TX_NOMIRROR, 5, 0),
	gsDPSetTileSize(0, 0, 0, 124, 252),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, cherry_metal_wing_cap_custom_mario_metal_wing_tip_light_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 512, 6, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(6, 0, 0, 2047, 256),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 512, 1, 0, G_TX_CLAMP | G_TX_NOMIRROR, 6, 0, G_TX_CLAMP | G_TX_NOMIRROR, 5, 0),
	gsDPSetTileSize(1, 0, 0, 124, 252),
	gsSPEndDisplayList(),
};

Gfx mat_revert_cherry_metal_wing_cap_Metal_Wing_Tip[] = {
	gsSPSetGeometryMode(G_CULL_BACK),
	gsDPPipeSync(),
	gsDPSetAlphaDither(G_AD_DISABLE),
	gsSPEndDisplayList(),
};

Gfx mat_cherry_metal_wing_cap_Metal_Wing_Base[] = {
	gsSPClearGeometryMode(G_CULL_BACK),
	gsSPLight(&cherry_metal_wing_cap_Metal_Wing_Base_lights.l, 1),
    gsSPLight(&cherry_metal_wing_cap_Metal_Wing_Base_lights.a, 2),
    gsSPCopyLightEXT(2, 15),
	gsDPPipeSync(),
	gsDPSetCombineLERP(TEXEL0, 0, SHADE, TEXEL1, TEXEL0, 0, ENVIRONMENT, 0, TEXEL0, 0, SHADE, TEXEL1, TEXEL0, 0, ENVIRONMENT, 0),
	gsDPSetAlphaDither(G_AD_NOISE),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, cherry_metal_wing_cap_custom_mario_metal_wing_shade_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 2047, 256),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, G_TX_CLAMP | G_TX_NOMIRROR, 6, 0, G_TX_CLAMP | G_TX_NOMIRROR, 5, 0),
	gsDPSetTileSize(0, 0, 0, 124, 252),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, cherry_metal_wing_cap_custom_mario_metal_wing_light_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 512, 6, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(6, 0, 0, 2047, 256),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 512, 1, 0, G_TX_CLAMP | G_TX_NOMIRROR, 6, 0, G_TX_CLAMP | G_TX_NOMIRROR, 5, 0),
	gsDPSetTileSize(1, 0, 0, 124, 252),
	gsSPEndDisplayList(),
};

Gfx mat_revert_cherry_metal_wing_cap_Metal_Wing_Base[] = {
	gsSPSetGeometryMode(G_CULL_BACK),
	gsDPPipeSync(),
	gsDPSetAlphaDither(G_AD_DISABLE),
	gsSPEndDisplayList(),
};

Gfx cherry_metal_wing_cap_Winged_Metal_Cap_mesh_layer_1[] = {
	gsSPDisplayList(mat_cherry_metal_wing_cap_Metal__CAP_),
	gsSPDisplayList(cherry_metal_wing_cap_Winged_Metal_Cap_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_cherry_metal_wing_cap_Metal__CAP_),
	gsSPEndDisplayList(),
};

Gfx cherry_metal_wing_cap_Wings_mesh_layer_4[] = {
	gsSPDisplayList(mat_cherry_metal_wing_cap_Metal_Wing_Tip),
	gsSPDisplayList(cherry_metal_wing_cap_Wings_mesh_layer_4_tri_0),
	gsSPDisplayList(mat_revert_cherry_metal_wing_cap_Metal_Wing_Tip),
	gsSPDisplayList(mat_cherry_metal_wing_cap_Metal_Wing_Base),
	gsSPDisplayList(cherry_metal_wing_cap_Wings_mesh_layer_4_tri_1),
	gsSPDisplayList(mat_revert_cherry_metal_wing_cap_Metal_Wing_Base),
	gsSPEndDisplayList(),
};

Gfx cherry_metal_wing_cap_material_revert_render_settings[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineLERP(0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT, 0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT),
	gsSPTexture(65535, 65535, 0, 0, 0),
	gsDPSetEnvColor(255, 255, 255, 255),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, 0),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP  | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 1023, 256),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, G_TX_CLAMP | G_TX_NOMIRROR, 5, 0, G_TX_CLAMP | G_TX_NOMIRROR, 5, 0),
	gsDPSetTileSize(0, 0, 0, 124, 124),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, 0),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 256, 6, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(6, 0, 0, 1023, 256),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, G_TX_CLAMP | G_TX_NOMIRROR, 5, 0, G_TX_CLAMP | G_TX_NOMIRROR, 5, 0),
	gsDPSetTileSize(1, 0, 0, 124, 124),
	gsSPEndDisplayList(),
};

