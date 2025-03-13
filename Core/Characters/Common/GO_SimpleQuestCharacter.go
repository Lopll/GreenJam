components {
  id: "WorldElement"
  component: "/Placeables/Common/S_WorldElement.script"
}
components {
  id: "S_DialogInitiator"
  component: "/Core/Common/S_DialogInitiator.script"
}
components {
  id: "S_SimpleQuestCharacter"
  component: "/Core/Characters/Common/S_SimpleQuestCharacter.script"
  properties {
    id: "atlas"
    value: "/Characters/Pchel/ATL_Pchel.atlas"
    type: PROPERTY_TYPE_HASH
  }
}
components {
  id: "S_Dec_ItemReqDialogue"
  component: "/Placeables/Decorators/S_Dec_ItemReqDialogue.script"
}
components {
  id: "function1"
  component: "/Placeables/Events/S_WorldEvent_MoveObject.script"
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
  "      y: 8.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 5.0\n"
  "  data: 12.5\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"IDLE\"\n"
  "material: \"/Core/Materials/M_OutlineSprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/Characters/Pchel/ATL_Pchel.atlas\"\n"
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
  "      y: 7.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 15.0\n"
  "  data: 25.0\n"
  "  data: 0.5\n"
  "}\n"
  ""
}
