import bpy

# Scale factor (0.5 for exaple)
scale_factor = 1

# Select object (armature)
obj = bpy.context.object

# FCurves scale (curves)
for fcurve in obj.animation_data.action.fcurves:
    if "location" in fcurve.data_path:
        for keyframe in fcurve.keyframe_points:
            keyframe.co[1] *= scale_factor
            keyframe.handle_left[1] *= scale_factor
            keyframe.handle_right[1] *= scale_factor
