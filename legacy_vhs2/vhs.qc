$include "F:\tools\sandstorm_source_files\unreal_scale.qci"

$modelname "weapons\vhs_product.mdl"

$bodygroup "weapon"
{
	studio "SKM_1P_VHS.dmx"
}
$bodygroup "sight"
{
	studio "SKM_1P_A_S_VHS.dmx"
}
$bodygroup "mag"
{
	studio "F:\tools\sandstorm_source_files\release\upgrades\magazine\SKM_1P_VHS_Magazine_30.smd"
}
$bodygroup "fallback"
{
	studio "F:\tools\sandstorm_source_files\release\upgrades\fallback\SKM_1P_A_FB_VHS.smd"
}

$cdmaterials "models/weapons/sandstorm_reloaded"

$include "v_vhs_bones.qci"

$include "v_vhs_anims.qci"

$attachment "camera" "b_camera" 0 0 0 rotate 0 -90 0
$attachment "shell" "b_wpn_eject" 0 0 0 rotate 0 0 0
$attachment "muzzle" "b_wpn_gl_muzzle" 1.9 3.81 0 rotate 0 0 0

$include "F:\tools\Sandstorm-Compile-Sources\gmod_bones_follow_sandstorm.qci"