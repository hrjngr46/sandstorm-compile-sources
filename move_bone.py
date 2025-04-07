import bpy
from mathutils import Vector

def move_selected_bones_to_custom_location():
    # Пользовательские настройки (измените эти значения!)
    target_location = Vector((0, 0, 0))  # <- Впишите нужные координаты (X,Y,Z)
    
    obj = bpy.context.object
    
    # Проверки
    if not obj or obj.type != 'ARMATURE':
        print("Ошибка: выберите арматуру")
        return
    
    if not obj.animation_data or not obj.animation_data.action:
        print("Ошибка: нет анимации")
        return

    # Получаем выбранные кости в POSE mode
    selected_bones = [bone for bone in obj.pose.bones if bone.bone.select]
    
    if not selected_bones:
        print("Ошибка: не выбрано ни одной кости!")
        return
    
    # Для каждой выбранной кости
    for bone in selected_bones:
        # Получаем текущее мировое положение кости
        current_world_pos = obj.matrix_world @ bone.matrix.translation
        
        # Вычисляем смещение до целевой точки
        offset = target_location - current_world_pos
        
        # Применяем к location-кривым
        for fcurve in obj.animation_data.action.fcurves:
            if fcurve.data_path == f'pose.bones["{bone.name}"].location':
                axis = fcurve.array_index
                for kf in fcurve.keyframe_points:
                    kf.co[1] += offset[axis]
                    kf.handle_left[1] += offset[axis]
                    kf.handle_right[1] += offset[axis]
    
    print(f"Перенесено {len(selected_bones)} костей в координаты {target_location}")

# Запуск
move_selected_bones_to_custom_location()