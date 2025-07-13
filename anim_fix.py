import bpy
import mathutils

obj = bpy.context.object
if obj is None or obj.type != 'ARMATURE':
    raise Exception("Выберите Armature в позном режиме")

bpy.ops.object.mode_set(mode='POSE')

armature = obj
pose_bones = armature.pose.bones
actions = [a for a in bpy.data.actions]

def offset_fcurve_keyframes(fcurve, offset):
    for kf in fcurve.keyframe_points:
        kf.co[1] -= offset
        kf.handle_left[1] -= offset
        kf.handle_right[1] -= offset
    fcurve.keyframe_points.update()

def move_fcurves_location(action, bone_name, loc):
    for fcurve in action.fcurves:
        if fcurve.data_path == f'pose.bones["{bone_name}"].location':
            idx = fcurve.array_index
            offset_fcurve_keyframes(fcurve, loc[idx])

def move_fcurves_scale(action, bone_name, scale):
    for fcurve in action.fcurves:
        if fcurve.data_path == f'pose.bones["{bone_name}"].scale':
            idx = fcurve.array_index
            offset_fcurve_keyframes(fcurve, scale[idx] - 1)

# Пока пропускаем ротацию — чтобы не запутать, её надо переносить отдельно.

for bone in pose_bones:
    loc = bone.location.copy()
    scale = bone.scale.copy()

    # Сдвигаем ключи анимаций
    for action in actions:
        move_fcurves_location(action, bone.name, loc)
        move_fcurves_scale(action, bone.name, scale)

    # Обнуляем локальные трансформации костей
    bone.location.zero()
    bone.scale = (1, 1, 1)
    if bone.rotation_mode == 'QUATERNION':
        bone.rotation_quaternion.identity()
    else:
        bone.rotation_euler = (0, 0, 0)

bpy.context.view_layer.update()
print("Кости обнулены, ключи анимаций location и scale скорректированы.")