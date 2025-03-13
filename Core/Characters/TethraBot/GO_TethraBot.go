components {
  id: "WorldElement"
  component: "/Placeables/Common/S_WorldElement.script"
}
components {
  id: "S_DialogInitiator"
  component: "/Core/Common/S_DialogInitiator.script"
}
components {
  id: "function1"
  component: "/Placeables/Events/S_WorldEvent_InitiateSell.script"
  properties {
    id: "sellTreasure"
    value: "true"
    type: PROPERTY_TYPE_BOOLEAN
  }
}
embedded_components {
  id: "collision"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_STATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"wall\"\n"
  "mask: \"player\"\n"
  "mask: \"playerTrigger\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      y: 5.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 10.0\n"
  "  data: 1.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"TethraBot\"\n"
  "material: \"/Core/Materials/M_OutlineSprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/Art/Placeables/ATL_Placeable.atlas\"\n"
  "}\n"
  ""
  position {
    z: 0.5
  }
}
embedded_components {
  id: "trigger"
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
  "  data: 7.6\n"
  "}\n"
  ""
}
