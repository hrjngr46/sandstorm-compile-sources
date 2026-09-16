$include "F:\tools\Sandstorm-Compile-Sources\sandstorm_hand_ik.qci"

$include "F:\tools\Sandstorm-Compile-Sources\unreal_scale.qci"

$modelname "weapons\vhs_product.mdl"

$model "weapon" "SKM_1P_VHS.smd"

$bodygroup "fallback"
{
	studio "SKM_1P_A_FB_VHS.smd"
}
$bodygroup "sight"
{
	studio "SKM_1P_A_S_VHS.smd"
	blank
}
$bodygroup "mag"
{
	studio "F:\tools\Sandstorm-Compile-Sources\upgrades\magazines\ar15\SKM_1P_AR15_Magazine_M4A1_30.smd"
	blank
}

$cdmaterials "models/weapons/sandstorm_reloaded"

$include "bones.qci"

$include "anims.qci"

$attachment "camera" "b_camera" 0 0 0 rotate 0 -90 0
$attachment "shell" "b_wpn_eject" 0 0 0 rotate 0 0 0
$attachment "muzzle" "b_wpn_muzzle" 0 0 0 rotate 0 0 -90

$include "F:\tools\Sandstorm-Compile-Sources\gmod_bones_follow_sandstorm.qci"