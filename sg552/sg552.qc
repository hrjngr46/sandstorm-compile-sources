$include "F:\tools\Sandstorm-Compile-Sources\sandstorm_hand_ik.qci"

$include "F:\tools\Sandstorm-Compile-Sources\unreal_scale.qci"

$modelname "weapons\c_sg552.mdl"

$model "weapon" "SKM_1P_SG552.smd"

$bodygroup "mag"
{
	studio "SKM_1P_SG552_Magazine_20.smd"
	studio "SKM_1P_SG552_Magazine_30.smd"
	blank
}

$cdmaterials "models/weapons/sandstorm_reloaded"

$include "bones.qci"

$include "anims.qci"

$attachment "camera" "b_camera" 0 0 0 rotate 0 -90 0
$attachment "shell" "b_wpn_eject" 0 0 0 rotate 0 0 0
$attachment "muzzle" "b_wpn_muzzle" 0 0 0 rotate 0 0 -90

$include "F:\tools\Sandstorm-Compile-Sources\gmod_bones_follow_sandstorm.qci"