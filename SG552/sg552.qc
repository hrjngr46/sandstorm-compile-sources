$modelname "sg552_01.mdl"

$include "F:\tools\Sandstorm-Compile-Sources\scale.qci"

$bodygroup "weapon"
{
	studio "SKM_1P_SG552.smd"
}
$bodygroup "mag"
{
	studio "SKM_1P_SG552_Magazine_20.smd"
}

$include "DefineBones.qci"

$include "Bonemerge.qci"

$sequence "idle" {
	"anims/AN_1P_SIG_B_Idle.smd"
	activity "ACT_VM_IDLE" 1
	fps 30
}

$sequence "reload_empty" {
	"anims/AN_1P_SIG_B_Reload_Empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	fps 30
}

$include "F:\tools\Sandstorm-Compile-Sources\gmod_bones_follow_sandstorm.qci"