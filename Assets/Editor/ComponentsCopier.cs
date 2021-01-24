﻿using UnityEngine;
using UnityEditor;
using System.Collections;

public class ComponentsCopier : EditorWindow
{

    static Component[] copiedComponents;

    [MenuItem("Edit/Copy all components %&C")]
    static void Copy()
    {
        copiedComponents = Selection.activeGameObject.GetComponents<Component>();
    }

    [MenuItem("Edit/Paste all components %&P")]
    static void Paste()
    {
        foreach (var targetGameObject in Selection.gameObjects)
        {
            if (!targetGameObject || copiedComponents == null) continue;
            foreach (var copiedComponent in copiedComponents)
            {
                if (!copiedComponent) continue;
                UnityEditorInternal.ComponentUtility.CopyComponent(copiedComponent);
                UnityEditorInternal.ComponentUtility.PasteComponentAsNew(targetGameObject);
            }
        }
    }

}