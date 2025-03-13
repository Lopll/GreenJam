components {
  id: "S_DialogInitiator"
  component: "/Core/Common/S_DialogInitiator.script"
}
components {
  id: "WorldElement"
  component: "/Placeables/Common/S_WorldElement.script"
}
components {
  id: "S_SpriteByName"
  component: "/Placeables/Common/S_SpriteByName.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"Window\"\n"
  "material: \"/Core/Materials/M_OutlineSprite.material\"\n"
  "size {\n"
  "  x: 27.0\n"
  "  y: 27.0\n"
  "}\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/Art/Placeables/ATL_Placeable.atlas\"\n"
  "}\n"
  ""
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
  "  data: 20.0\n"
  "  data: 20.0\n"
  "  data: 0.5\n"
  "}\n"
  ""
}
