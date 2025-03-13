components {
  id: "function1"
  component: "/Placeables/Events/S_WorldEvent_SetDiaryNote.script"
}
components {
  id: "WorldEvent"
  component: "/Placeables/Common/S_WorldEvent.script"
}
components {
  id: "S_WorldElement"
  component: "/Placeables/Common/S_WorldElement.script"
  properties {
    id: "noSprite"
    value: "true"
    type: PROPERTY_TYPE_BOOLEAN
  }
}
embedded_components {
  id: "sound"
  type: "sound"
  data: "sound: \"/Sounds/HUD/Inventory/DiaryNote.ogg\"\n"
  ""
}
embedded_components {
  id: "collision"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_TRIGGER\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"trigger\"\n"
  "mask: \"player\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 32.0\n"
  "  data: 32.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
