$modelname "1p_welrod.mdl"

$include "F:\tools\Sandstorm-Compile-Sources\scale.qci"

$include "F:\tools\Sandstorm-Compile-Sources\sandstorm_hand_ik.qci"

$include "F:\tools\Sandstorm-Compile-Sources\sandstorm_deltas_macros.qci"

$include "definebones.qci"

$model "weapon" "SKM_1P_Welrod.smd"

$bodygroup "sight"
{
	studio "SKM_1P_A_S_Welrod.smd"
}
$bodygroup "mag"
{
	studio "SKM_1P_Welrod_Magazine.smd"
}

$attachment "shell" "b_wpn_spec_1" 0 0 0 rotate -90 0 0

$include "weightlist.qci"

$include "anims.qci"

$include "F:\tools\Sandstorm-Compile-Sources\gmod_bones_follow_sandstorm.qci"

