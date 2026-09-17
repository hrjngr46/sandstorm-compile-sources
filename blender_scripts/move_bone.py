import bpy
from mathutils import Vector

def move_selected_bones_to_custom_location():
    # Custom settings (change these values!)
    target_location = Vector((0, 0, 0))  # <- Set desired coordinates (X, Y, Z)
    
    obj = bpy.context.object
    
    # Checks
    if not obj or obj.type != 'ARMATURE':
        print("Error: Please select an Armature")
        return
    
    if not obj.animation_data or not obj.animation_data.action:
        print("Error: No animation data found")
        return

    # Get selected bones in POSE mode
    selected_bones = [bone for bone in obj.pose.bones if bone.bone.select]
    
    if not selected_bones:
        print("Error: No bones selected!")
        return
    
    # For each selected bone
    for bone in selected_bones:
        # Get the bone's current world position
        current_world_pos = obj.matrix_world @ bone.matrix.translation
        
        # Calculate offset to the target point
        offset = target_location - current_world_pos
        
        # Apply to location f-curves
        for fcurve in obj.animation_data.action.fcurves:
            if fcurve.data_path == f'pose.bones["{bone.name}"].location':
                axis = fcurve.array_index
                for kf in fcurve.keyframe_points:
                    kf.co[1] += offset[axis]
                    kf.handle_left[1] += offset[axis]
                    kf.handle_right[1] += offset[axis]
    
    print(f"Moved {len(selected_bones)} bones to coordinates {target_location}")

# Run
move_selected_bones_to_custom_location()
