$include "F:\tools\Sandstorm-Compile-Sources\sandstorm_hand_ik.qci"

$include "F:\tools\Sandstorm-Compile-Sources\unreal_scale.qci"

$maxverts 999999

$modelname "weapons\c_deagle.mdl"

$bodygroup "grip"
{
	studio "SKM_1P_Grip01_DEagle.smd"
}

$bodygroup "mag"
{
	studio "SKM_1P_DEagle_Mag.smd"
}

$model "weapon" "SKM_1P_DEagle.smd"

$cdmaterials "models/weapons/sandstorm_reloaded"

$include "bones.qci"

$include "anims.qci"

$attachment "camera" "b_camera" 0 0 0 rotate 0 -90 0
$attachment "shell" "b_wpn_eject" 0 0 0 rotate 0 0 0
$attachment "muzzle" "b_wpn_muzzle" 0 0 0 rotate 0 0 -90

$include "F:\tools\Sandstorm-Compile-Sources\gmod_bones_follow_sandstorm.qci"